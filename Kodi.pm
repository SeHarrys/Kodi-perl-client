package Kodi;

use Mojo::UserAgent;
use Mojo::IOLoop;
use Data::Dumper;

use parent 'Kodi::Methods';

use feature qw(say);

sub new {
    my $class = shift;
    my $host  = shift;

    my $self = {
       host => '',
       playerid => 0,
       method => '',
       json => '',
       ua => Mojo::UserAgent->new(),
       error => '',
       debug => 1
    };

    $self = bless $self, $class;

    unless ( $host ) {
	$self->Search();
    } else {
	$self->Set($host);
    }

    return $self;
}

sub Set {
    my $self = shift;
    my $host = shift;

    $self->{host} = $host;
    $self->{url}  = "http://$host/jsonrpc";
}

sub Search {
    my $self = shift;

    my $delay = Mojo::IOLoop->delay(sub { });

    for ( 1 .. 255 ) {
	my $end = $delay->begin;
	my $url = "192.168.1.$_:8080";

	$self->{ua}->get('http://'.$url => sub {
	    my ($ua, $tx) = @_;

	    if ( $tx->res->code == 200 ) {
		if ( $tx->res->dom->at('title') &&
		     $tx->res->dom->at('title')->text =~ '[XBMC|Kodi]' ) {
		    say "Kodi Found @ $url";
		    $self->Set($url);
		}
	    }

	    $end->();
			 });
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

    $self->{error} = $set->{error} if $set->{error};

}

sub GenMethods {
    my $self = shift;

    my $kodi = $self->{ua}->get($self->{url})->res->json;

    map { say qq{$_ $kodi->{$_} } } keys $kodi if $self->{debug};

    say "Kodi Methods : ".scalar( keys $kodi->{methods} )." available";

    my $PM = "package Kodi::Methods;\n";

    for my $m (keys $kodi->{methods}) {
	my $func = $m;
	$func =~ s/\.//;
	$PM .= "=doc \n $m : ".$kodi->{methods}->{$m}->{description}."\n=cut\n";
	$PM .= "sub $func {\n";
	$PM .= 'my ($self,$params) = (shift,shift);'."\n";

	for (0 .. length @{$kodi->{methods}->{$m}->{params}} ) {
	    for my $key (keys%{$kodi->{methods}->{$m}->{params}[$_]}) {
		if ( $key eq 'required' && $kodi->{methods}->{$m}->{params}[$_]{$key} ) {
		    $PM .=' unless ( $params->{'.$kodi->{methods}->{$m}->{params}[$_]{name}.'} ) { ';
		    $PM .=' print "['.$func.'] Need a argument : '.$kodi->{methods}->{$m}->{params}[$_]{name}.'\n";'." }\n";
		}
	    }
	}

	$PM .= '$self->{params} = $params;'."\n";
	$PM .= '$self->Send("'.$m.'");'."\n}\n";
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

1;
