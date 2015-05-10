#!/usr/bin/env perl

=doc Generate API: Kodi/Methods.pm
 ./Kodi.pl gen
 ./Kodi.pl Update
 ./Kodi.pl Application.SetVolume '{"volume":10}'
 ./Kodi.pl PlayerPlayPause '{"playerid":1}'
 ./Kodi.pl GUIShowNotification '{"title":"Oh yeah","message":"Doble yeahhhh"}'
=cut

use strict;
use Kodi;
use JSON qw(decode_json);
use feature qw(say);

my $X = Kodi->new('config.json');
#my $X = Kodi->new();

exit unless $ARGV[0];

if ( $ARGV[0] eq 'gen' ) { 
    $X->GenMethods(); 
    exit;
} elsif ( $ARGV[0] eq 'get' ) {
    my $M = $X->GetMethods();
    map { say $_ } keys %{ $M->{methods} };
    exit;
} elsif ( $ARGV[0] eq 'look' ) {
    $X->SearchMethods($ARGV[1]);
    exit;
} elsif ( $ARGV[0] eq 'log' ) {
    $X->{ssh}->system("/usr/bin/tail -f ~/.kodi/temp/kodi.log"); 
    exit;
}

my $nam = $ARGV[0];
$nam =~ s/\.//;

if ( $ARGV[1]) {
    $X->$nam(decode_json($ARGV[1]));
} else {
    $X->$nam();
}

#$X->PlayerPlayPause( { playerid => 1 });
#$X->GUIShowNotification( { title => 'Oh yeah' , message => 'Doble yeahhhh' });
#$X->PlayerGetActivePlayers();
#$X->ApplicationSetVolume( { volume => 10 } );
