#!/usr/bin/env perl

use Kodi;
use JSON qw(decode_json);
use Data::Dumper;
use feature qw(say);

exit unless $ARGV[0];

my $X = Kodi->new('192.168.1.107:8080');

## Generate API Methods
if ( $ARGV[0] eq 'gen' ) {
    $X->GenMethods();
    exit;
}

#$X->PlayerPlayPause( { playerid => 1 });
#$X->GUIShowNotification( { title => 'Oh yeah' , message => 'Doble yeahhhh' });
#$X->PlayerGetActivePlayers();
#$X->ApplicationSetVolume( { volume => 89 } );
#$X->VideoLibraryGetMovies();

# ./Kodi.pl PlayerGetActivePlayers '{"volume":10}'
# ./Kodi.pl PlayerPlayPause '{"playerid":1}'

my $nam = $ARGV[0];

if ( $ARGV[1]) {
    $X->$nam(decode_json($ARGV[1]));
} else {
    $X->$nam();
}
