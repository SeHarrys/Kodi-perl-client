package Kodi;

=head
    Kodi client
=cut

use Mojo::UserAgent;
use parent 'Kodi::Methods';
use Data::Dumper;
use feature qw(say);

sub new {
    my $class = shift;

    my $self = {
       host => 'http://'.shift,
       playerid => 0,
       method => '',
       json => '',
       ua => Mojo::UserAgent->new(),
       error => '',
       debug => 1
    };

    $self->{url} = $self->{host}.'/jsonrpc';

    return bless $self, $class;
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

    if ( $set->{error} ) {
	$self->{error} = $set->{error};
    }

}

sub GenMethods {
    my $self = shift;

    my $xbmc = $self->{ua}->get($self->{url})->res->json;

    say $_ for keys $xbmc;

    say "Kodi Methods : ".scalar( keys $xbmc->{methods} )." available";

    my $PM = "package Kodi::Methods;\n";

    for my $m (keys $xbmc->{methods}) {
	my $func = $m;
	$func =~ s/\.//;
	$PM .= "=doc \n $m : ".$xbmc->{methods}->{$m}->{description}."\n=cut\n";
	$PM .= "sub $func {\n";
	$PM .= 'my ($self,$params) = (shift,shift);'."\n";

	for (0 .. length @{$xbmc->{methods}->{$m}->{params}} ) {
	    for my $key (keys%{$xbmc->{methods}->{$m}->{params}[$_]}) {
		if ( $key eq 'required' && $xbmc->{methods}->{$m}->{params}[$_]{$key} ) {
		    $PM .=' unless ( $params->{'.$xbmc->{methods}->{$m}->{params}[$_]{name}.'} ) { ';
		    $PM .=' print "['.$func.'] Need a argument : '.$xbmc->{methods}->{$m}->{params}[$_]{name}.'\n";'." }\n";
		}
	    }
	}

	$PM .= '$self->{params} = $params;'."\n";
	$PM .= '$self->Send("'.$m.'");'."\n}\n";
    }
    $PM .= "1;";

    open FF,">Kodi/Methods.pm";
    print FF $PM;
    close FF;
}

1;
