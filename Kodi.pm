package Kodi;

use strict;
use Cwd;
use Config::JSON;
use Mojo::UserAgent;
use Mojo::IOLoop;
use Net::OpenSSH;
use Data::Dumper;

use parent 'Kodi::Methods';
use feature qw(say);

sub new {
    my $class  = shift;
    my $config = %ENV{'KODI'} // 'config.json';
    
    my $self = {
       host => '',
       playerid => 0,
       method => '',
       json => '',
       ua   => Mojo::UserAgent->new(),
       error => '',
       debug => 1
    };

    $self = bless $self, $class;

    unless ( -e $config ) {
	$self->Search();
    } else {
	my $conf = Config::JSON->new($config);

	$self->{conf} = $conf->{config};
	$self->Set($self->{conf}->{ip}.':'.$self->{conf}->{port});
    }

    if ( $self->{conf}->{ssh} ) {
	$self->{conf}->{ssh}->{port} = 22 unless
	    $self->{conf}->{ssh}->{port};

	$self->{ssh} = Net::OpenSSH->new(
	    $self->{conf}->{ssh}->{user}.':'.
	    $self->{conf}->{ssh}->{passwd}.'@'.
	    $self->{conf}->{ip}.':'.$self->{conf}->{ssh}->{port});
    } else {
	$self->{ssh} = sub { say "No SSH config"; exit };
    }

    return $self;
}

sub Set {
    my $self = shift;
    my $host = shift;

    $self->{host} = $host;
    $self->{url}  = "http://$host/jsonrpc";
}

sub iphex {
    my $s = shift;
    my $c = 6;
    my @ip;
    
    map { push @ip, hex substr($s,$c,2); $c -= 2 } 0 .. 2;
    
    return join '.',@ip;
}

sub Search {
    my $self = shift;
    my $delay = Mojo::IOLoop->delay(sub { });

    local $/;
    open( my $fh, '<', '/proc/net/tcp' );
    my $t = <$fh>;
    close($fh);
    my @a = split "\n",$t;
    my $IPs;

    for ( 1 .. scalar(@a) ) {
	my @l = split " ",$a[$_];
	my ($ip,$port) = split ':',$l[1];
	$IPs->{$ip} = iphex($ip);
    }

    for ( keys %{$IPs} ) {
	next if $IPs->{$_} =~ /^(0|127)/;
	my $IP = $IPs->{$_};
	for ( 1 .. 255 ) {
	    my $end = $delay->begin;
	    my $url = qq{$IP.$_:9090}; # 8080

	    $self->{ua}->get('http://'.$url => sub {
		my ($ua, $tx) = @_;

		if ( $tx->res->code == 200 ) {
		    if ( $tx->res->dom->at('title') &&
			 $tx->res->dom->at('title')->text =~ '[XBMC|Kodi|Arch]' ) {

			$self->{ip} = $IP;
			$self->Set($url);
			
			say "Kodi Found @ $url";			
		    }
		}

		$end->();
			     });
	}
    }

    $delay->wait;
}

sub Send {
    my $self = shift;
    my $m    = shift;

    my $send = {
	"jsonrpc" => "2.0",
	"method"  => $m,
	"id"      => 1
    };

    $send->{params} = $self->{params} if $self->{params};

    my $tx = $self->{ua}->post($self->{host}.'/jsonrpc' => json => $send );
    my $ret = $tx->res->json;

    if ( $self->{debug} ) {
	print Dumper $send;
	print Dumper $ret;
    }

    unless ( $ret ) {
	return { error => 'No response' };
    }

    return $ret->{result} eq 'OK';

    $self->{error} = $ret->{error} if $ret->{error};
}

sub GetMethods {
    my $self = shift;

    return $self->{ua}->get($self->{url})->res->json;
}

sub SearchMethods {
    my $self = shift;
    my $search = shift;
    
    my $kodi = $self->GetMethods();
    
    say "Looking for: $search";
    
    for my $K ( keys %{ $kodi->{methods} } ) {
	if ( $K =~ /$search/i ) {
	    say "Found : $K\t".$kodi->{methods}->{$K}->{description};
	}
    }    
}

sub GenMethods {
    my $self = shift;

    my $kodi = $self->GetMethods();

    map { say qq{$_ $kodi->{$_} } } keys %{ $kodi } if $self->{debug};

    say "Kodi Methods : ".scalar( keys %{ $kodi->{methods} } )." available";

    my $PM = "package Kodi::Methods;\n";

    for my $m ( keys %{ $kodi->{methods} } ) {
	my $func = $m;
	$func =~ s/\.//;
	$PM .= "=doc \n $m : ".$kodi->{methods}->{$m}->{description}."\n=cut\n";
	$PM .= "sub $func {\n";
	$PM .= ' my ($self,$params) = (shift,shift);'."\n";

	for (0 .. length @{$kodi->{methods}->{$m}->{params}} ) {
	    for my $key (keys%{$kodi->{methods}->{$m}->{params}[$_]}) {
		if ( $key eq 'required' && $kodi->{methods}->{$m}->{params}[$_]{$key} ) {
		    $PM .=' unless ( $params->{'.$kodi->{methods}->{$m}->{params}[$_]{name}.'} ) { ';
		    $PM .=' print "['.$func.'] Need a argument : '.$kodi->{methods}->{$m}->{params}[$_]{name}.'\n";'." }\n";
		}
	    }
	}

	$PM .= ' $self->{params} = $params;'."\n";
	$PM .= ' $self->Send("'.$m.'");'."\n}\n";
    }
    $PM .= "1;";

    open my $ff, '>' , 'Kodi/Methods.pm' or die "Error: $!";
    print $ff $PM;
    close $ff;
}

sub Update {
    my $self = shift;

    $self->AudioLibraryScan();
    $self->VideoLibraryScan();

    say "Update Library - Kodi @ ".$self->{host};
}

sub IsRun {
    my $self = shift;
    my $name = shift;
    
    my $pid = $self->{ssh}->capture("pgrep $name");

    unless($pid) {
	say "$name is not running";
    } else {
	print "$name is running PID: $pid";
    }    
}

sub Lirc {
    my $self = shift;

    $self->{ssh}->scp_put("lirc/madeforweb", "/storage/.config/lircd.conf") or die "error: " . $self->{ssh}->error;
    $self->{ssh}->scp_put("lirc/Lircmap.xml", "/storage/.kodi/userdata/Lircmap.xml") or die"error: ". $self->{ssh}->error;
    $self->{ssh}->scp_put("lirc/autostart.sh", "/storage/.config/autostart.sh") or die"error: ". $self->{ssh}->error;
    $self->{ssh}->system("chmod +x /storage/.config/autostart.sh");
}

sub GitHubPkg {
    my $self = shift;

    for my $mod ( @{$self->{conf}->{Pkgs}} ) {
	#my $zip = $self->{ua}->get("https://github.com/$mod/releases")->res->dom->at('ul.release-downloads li a')->{href};
    }
}

=doc
    Descarga los plugins, si existe se omite por defecto
=cut
sub Pkgs {
    my $self = shift;

    for my $mod ( @{$self->{conf}->{Pkgs}} ) {
	$self->{ssh}->system("wget $mod");
    }
}

=doc
    Genera alias volumen & play
=cut
sub Alias {
    my $home = $ENV{HOME}."/.bashrc";
    my $cwd  = cwd()."/Kodi.pl";
    
    return unless -e $home;
    
    my $bash = << "EOF";
## __KODI__
alias Volumen="$cwd volume \$1"
alias Pausa="$cwd play"
alias KodiExec="$cwd \$1"
## __KODI__
EOF
    my $cont = 0;
    
    open FF,$home;
    open FW,'>',"/tmp/kodi-bashrc";
    while(<FF>) {
	$cont++ if $_ =~ /__KODI__/;
	print FW $_ if $cont == 0 || $cont > 2;
    }
    print FW $bash;

    close FF;
    close FW;

    rename "/tmp/kodi-bashrc",$home;
    say "Alias Generado";
}

1;
