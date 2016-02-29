#!/usr/bin/env perl

=doc Generate API: Kodi/Methods.pm
 
 ./Kodi.pl gen
 ./Kodi.pl Update
 ./Kodi.pl Application.SetVolume '{"volume":10}'
 ./Kodi.pl PlayerPlayPause '{"playerid":1}'
 ./Kodi.pl GUIShowNotification '{"title":"Oh yeah","message":"Doble yeahhhh"}'
 ./Kodi.pl PlayerGetActivePlayers
=cut

use strict;
use Kodi;
use JSON qw(decode_json);
use feature qw(say);

exit unless $ARGV[0];

my $X = Kodi->new();

if ( $ARGV[0] eq 'gen' ) { 
    $X->GenMethods();
} elsif ( $ARGV[0] eq 'get' ) {
    my $M = $X->GetMethods();
    map { say $_ } keys %{ $M->{methods} };
} elsif ( $ARGV[0] eq 'look' ) {
    $X->SearchMethods($ARGV[1]);
} elsif ( $ARGV[0] eq 'log' ) {
    $X->{ssh}->system("tail -f ~/.kodi/temp/kodi.log");
} elsif ( $ARGV[0] eq 'isrun' ) {
    $X->IsRun($ARGV[1]);
} elsif ( $ARGV[0] eq 'search' ) {
    $X->Search();
} elsif ( $ARGV[0] eq 'play' ) { $X->PlayerPlayPause( { playerid => 1 } );
} elsif ( $ARGV[0] eq 'volume' ) { $X->ApplicationSetVolume( { volume => int($ARGV[1]) } );
} else {
    (my $nam = $ARGV[0]) =~ s/\.//;
    
    if ( $ARGV[1]) {
	$X->$nam(decode_json($ARGV[1]));
    } else {
	$X->$nam();
    }
}
