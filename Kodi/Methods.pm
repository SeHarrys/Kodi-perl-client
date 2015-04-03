package Kodi::Methods;
=doc 
 System.Hibernate : Puts the system running Kodi into hibernate mode
=cut
sub SystemHibernate {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("System.Hibernate");
}
=doc 
 System.Suspend : Suspends the system running Kodi
=cut
sub SystemSuspend {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("System.Suspend");
}
=doc 
 VideoLibrary.SetMovieSetDetails : Update the given movie set with the given details
=cut
sub VideoLibrarySetMovieSetDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{setid} ) {  print "[VideoLibrarySetMovieSetDetails] Need a argument : setid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.SetMovieSetDetails");
}
=doc 
 Player.SetSpeed : Set the speed of the current playback
=cut
sub PlayerSetSpeed {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerSetSpeed] Need a argument : playerid\n"; }
 unless ( $params->{speed} ) {  print "[PlayerSetSpeed] Need a argument : speed\n"; }
$self->{params} = $params;
$self->Send("Player.SetSpeed");
}
=doc 
 PVR.GetChannelDetails : Retrieves the details of a specific channel
=cut
sub PVRGetChannelDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{channelid} ) {  print "[PVRGetChannelDetails] Need a argument : channelid\n"; }
$self->{params} = $params;
$self->Send("PVR.GetChannelDetails");
}
=doc 
 GUI.GetProperties : Retrieves the values of the given properties
=cut
sub GUIGetProperties {
my ($self,$params) = (shift,shift);
 unless ( $params->{properties} ) {  print "[GUIGetProperties] Need a argument : properties\n"; }
$self->{params} = $params;
$self->Send("GUI.GetProperties");
}
=doc 
 VideoLibrary.GetRecentlyAddedEpisodes : Retrieve all recently added tv episodes
=cut
sub VideoLibraryGetRecentlyAddedEpisodes {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetRecentlyAddedEpisodes");
}
=doc 
 PVR.GetRecordings : Retrieves the recordings
=cut
sub PVRGetRecordings {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("PVR.GetRecordings");
}
=doc 
 Files.GetFileDetails : Get details for a specific file
=cut
sub FilesGetFileDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{file} ) {  print "[FilesGetFileDetails] Need a argument : file\n"; }
$self->{params} = $params;
$self->Send("Files.GetFileDetails");
}
=doc 
 VideoLibrary.GetMovieSets : Retrieve all movie sets
=cut
sub VideoLibraryGetMovieSets {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetMovieSets");
}
=doc 
 VideoLibrary.GetEpisodes : Retrieve all tv show episodes
=cut
sub VideoLibraryGetEpisodes {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetEpisodes");
}
=doc 
 PVR.GetBroadcasts : Retrieves the program of a specific channel
=cut
sub PVRGetBroadcasts {
my ($self,$params) = (shift,shift);
 unless ( $params->{channelid} ) {  print "[PVRGetBroadcasts] Need a argument : channelid\n"; }
$self->{params} = $params;
$self->Send("PVR.GetBroadcasts");
}
=doc 
 VideoLibrary.RemoveMusicVideo : Removes the given music video from the library
=cut
sub VideoLibraryRemoveMusicVideo {
my ($self,$params) = (shift,shift);
 unless ( $params->{musicvideoid} ) {  print "[VideoLibraryRemoveMusicVideo] Need a argument : musicvideoid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.RemoveMusicVideo");
}
=doc 
 JSONRPC.Permission : Retrieve the clients permissions
=cut
sub JSONRPCPermission {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("JSONRPC.Permission");
}
=doc 
 XBMC.GetInfoBooleans : Retrieve info booleans about Kodi and the system
=cut
sub XBMCGetInfoBooleans {
my ($self,$params) = (shift,shift);
 unless ( $params->{booleans} ) {  print "[XBMCGetInfoBooleans] Need a argument : booleans\n"; }
$self->{params} = $params;
$self->Send("XBMC.GetInfoBooleans");
}
=doc 
 Playlist.GetProperties : Retrieves the values of the given properties
=cut
sub PlaylistGetProperties {
my ($self,$params) = (shift,shift);
 unless ( $params->{playlistid} ) {  print "[PlaylistGetProperties] Need a argument : playlistid\n"; }
 unless ( $params->{properties} ) {  print "[PlaylistGetProperties] Need a argument : properties\n"; }
$self->{params} = $params;
$self->Send("Playlist.GetProperties");
}
=doc 
 Settings.GetSettings : Retrieves all settings
=cut
sub SettingsGetSettings {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Settings.GetSettings");
}
=doc 
 Player.Open : Start playback of either the playlist with the given ID, a slideshow with the pictures from the given directory or a single file or an item from the database.
=cut
sub PlayerOpen {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Player.Open");
}
=doc 
 VideoLibrary.GetSeasonDetails : Retrieve details about a specific tv show season
=cut
sub VideoLibraryGetSeasonDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{seasonid} ) {  print "[VideoLibraryGetSeasonDetails] Need a argument : seasonid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetSeasonDetails");
}
=doc 
 Player.Stop : Stops playback
=cut
sub PlayerStop {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerStop] Need a argument : playerid\n"; }
$self->{params} = $params;
$self->Send("Player.Stop");
}
=doc 
 VideoLibrary.Export : Exports all items from the video library
=cut
sub VideoLibraryExport {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.Export");
}
=doc 
 Favourites.AddFavourite : Add a favourite with the given details
=cut
sub FavouritesAddFavourite {
my ($self,$params) = (shift,shift);
 unless ( $params->{title} ) {  print "[FavouritesAddFavourite] Need a argument : title\n"; }
 unless ( $params->{type} ) {  print "[FavouritesAddFavourite] Need a argument : type\n"; }
$self->{params} = $params;
$self->Send("Favourites.AddFavourite");
}
=doc 
 System.GetProperties : Retrieves the values of the given properties
=cut
sub SystemGetProperties {
my ($self,$params) = (shift,shift);
 unless ( $params->{properties} ) {  print "[SystemGetProperties] Need a argument : properties\n"; }
$self->{params} = $params;
$self->Send("System.GetProperties");
}
=doc 
 GUI.ActivateWindow : Activates the given window
=cut
sub GUIActivateWindow {
my ($self,$params) = (shift,shift);
 unless ( $params->{window} ) {  print "[GUIActivateWindow] Need a argument : window\n"; }
$self->{params} = $params;
$self->Send("GUI.ActivateWindow");
}
=doc 
 JSONRPC.Introspect : Enumerates all actions and descriptions
=cut
sub JSONRPCIntrospect {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("JSONRPC.Introspect");
}
=doc 
 Player.SetPartymode : Turn partymode on or off
=cut
sub PlayerSetPartymode {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerSetPartymode] Need a argument : playerid\n"; }
 unless ( $params->{partymode} ) {  print "[PlayerSetPartymode] Need a argument : partymode\n"; }
$self->{params} = $params;
$self->Send("Player.SetPartymode");
}
=doc 
 Player.SetRepeat : Set the repeat mode of the player
=cut
sub PlayerSetRepeat {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerSetRepeat] Need a argument : playerid\n"; }
 unless ( $params->{repeat} ) {  print "[PlayerSetRepeat] Need a argument : repeat\n"; }
$self->{params} = $params;
$self->Send("Player.SetRepeat");
}
=doc 
 AudioLibrary.GetAlbums : Retrieve all albums from specified artist or genre
=cut
sub AudioLibraryGetAlbums {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetAlbums");
}
=doc 
 AudioLibrary.GetSongs : Retrieve all songs from specified album, artist or genre
=cut
sub AudioLibraryGetSongs {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetSongs");
}
=doc 
 AudioLibrary.Export : Exports all items from the audio library
=cut
sub AudioLibraryExport {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.Export");
}
=doc 
 Application.SetMute : Toggle mute/unmute
=cut
sub ApplicationSetMute {
my ($self,$params) = (shift,shift);
 unless ( $params->{mute} ) {  print "[ApplicationSetMute] Need a argument : mute\n"; }
$self->{params} = $params;
$self->Send("Application.SetMute");
}
=doc 
 Settings.SetSettingValue : Changes the value of a setting
=cut
sub SettingsSetSettingValue {
my ($self,$params) = (shift,shift);
 unless ( $params->{setting} ) {  print "[SettingsSetSettingValue] Need a argument : setting\n"; }
 unless ( $params->{value} ) {  print "[SettingsSetSettingValue] Need a argument : value\n"; }
$self->{params} = $params;
$self->Send("Settings.SetSettingValue");
}
=doc 
 Player.SetAudioStream : Set the audio stream played by the player
=cut
sub PlayerSetAudioStream {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerSetAudioStream] Need a argument : playerid\n"; }
 unless ( $params->{stream} ) {  print "[PlayerSetAudioStream] Need a argument : stream\n"; }
$self->{params} = $params;
$self->Send("Player.SetAudioStream");
}
=doc 
 Input.Info : Shows the information dialog
=cut
sub InputInfo {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Info");
}
=doc 
 Playlist.Swap : Swap items in the playlist. Does not work for picture playlists (aka slideshows).
=cut
sub PlaylistSwap {
my ($self,$params) = (shift,shift);
 unless ( $params->{playlistid} ) {  print "[PlaylistSwap] Need a argument : playlistid\n"; }
 unless ( $params->{position1} ) {  print "[PlaylistSwap] Need a argument : position1\n"; }
$self->{params} = $params;
$self->Send("Playlist.Swap");
}
=doc 
 Playlist.Add : Add item(s) to playlist
=cut
sub PlaylistAdd {
my ($self,$params) = (shift,shift);
 unless ( $params->{playlistid} ) {  print "[PlaylistAdd] Need a argument : playlistid\n"; }
 unless ( $params->{item} ) {  print "[PlaylistAdd] Need a argument : item\n"; }
$self->{params} = $params;
$self->Send("Playlist.Add");
}
=doc 
 Settings.GetSections : Retrieves all setting sections
=cut
sub SettingsGetSections {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Settings.GetSections");
}
=doc 
 VideoLibrary.SetMusicVideoDetails : Update the given music video with the given details
=cut
sub VideoLibrarySetMusicVideoDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{musicvideoid} ) {  print "[VideoLibrarySetMusicVideoDetails] Need a argument : musicvideoid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.SetMusicVideoDetails");
}
=doc 
 VideoLibrary.GetEpisodeDetails : Retrieve details about a specific tv show episode
=cut
sub VideoLibraryGetEpisodeDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{episodeid} ) {  print "[VideoLibraryGetEpisodeDetails] Need a argument : episodeid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetEpisodeDetails");
}
=doc 
 Application.SetVolume : Set the current volume
=cut
sub ApplicationSetVolume {
my ($self,$params) = (shift,shift);
 unless ( $params->{volume} ) {  print "[ApplicationSetVolume] Need a argument : volume\n"; }
$self->{params} = $params;
$self->Send("Application.SetVolume");
}
=doc 
 Player.Move : If picture is zoomed move viewport left/right/up/down otherwise skip previous/next
=cut
sub PlayerMove {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerMove] Need a argument : playerid\n"; }
 unless ( $params->{direction} ) {  print "[PlayerMove] Need a argument : direction\n"; }
$self->{params} = $params;
$self->Send("Player.Move");
}
=doc 
 Profiles.GetCurrentProfile : Retrieve the current profile
=cut
sub ProfilesGetCurrentProfile {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Profiles.GetCurrentProfile");
}
=doc 
 VideoLibrary.RemoveEpisode : Removes the given episode from the library
=cut
sub VideoLibraryRemoveEpisode {
my ($self,$params) = (shift,shift);
 unless ( $params->{episodeid} ) {  print "[VideoLibraryRemoveEpisode] Need a argument : episodeid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.RemoveEpisode");
}
=doc 
 Input.Down : Navigate down in GUI
=cut
sub InputDown {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Down");
}
=doc 
 Input.Back : Goes back in GUI
=cut
sub InputBack {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Back");
}
=doc 
 JSONRPC.NotifyAll : Notify all other connected clients
=cut
sub JSONRPCNotifyAll {
my ($self,$params) = (shift,shift);
 unless ( $params->{sender} ) {  print "[JSONRPCNotifyAll] Need a argument : sender\n"; }
 unless ( $params->{message} ) {  print "[JSONRPCNotifyAll] Need a argument : message\n"; }
$self->{params} = $params;
$self->Send("JSONRPC.NotifyAll");
}
=doc 
 Input.SendText : Send a generic (unicode) text
=cut
sub InputSendText {
my ($self,$params) = (shift,shift);
 unless ( $params->{text} ) {  print "[InputSendText] Need a argument : text\n"; }
$self->{params} = $params;
$self->Send("Input.SendText");
}
=doc 
 Player.PlayPause : Pauses or unpause playback and returns the new state
=cut
sub PlayerPlayPause {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerPlayPause] Need a argument : playerid\n"; }
$self->{params} = $params;
$self->Send("Player.PlayPause");
}
=doc 
 VideoLibrary.SetMovieDetails : Update the given movie with the given details
=cut
sub VideoLibrarySetMovieDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{movieid} ) {  print "[VideoLibrarySetMovieDetails] Need a argument : movieid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.SetMovieDetails");
}
=doc 
 PVR.GetProperties : Retrieves the values of the given properties
=cut
sub PVRGetProperties {
my ($self,$params) = (shift,shift);
 unless ( $params->{properties} ) {  print "[PVRGetProperties] Need a argument : properties\n"; }
$self->{params} = $params;
$self->Send("PVR.GetProperties");
}
=doc 
 AudioLibrary.SetSongDetails : Update the given song with the given details
=cut
sub AudioLibrarySetSongDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{songid} ) {  print "[AudioLibrarySetSongDetails] Need a argument : songid\n"; }
$self->{params} = $params;
$self->Send("AudioLibrary.SetSongDetails");
}
=doc 
 PVR.GetBroadcastDetails : Retrieves the details of a specific broadcast
=cut
sub PVRGetBroadcastDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{broadcastid} ) {  print "[PVRGetBroadcastDetails] Need a argument : broadcastid\n"; }
$self->{params} = $params;
$self->Send("PVR.GetBroadcastDetails");
}
=doc 
 Settings.GetSettingValue : Retrieves the value of a setting
=cut
sub SettingsGetSettingValue {
my ($self,$params) = (shift,shift);
 unless ( $params->{setting} ) {  print "[SettingsGetSettingValue] Need a argument : setting\n"; }
$self->{params} = $params;
$self->Send("Settings.GetSettingValue");
}
=doc 
 System.Shutdown : Shuts the system running Kodi down
=cut
sub SystemShutdown {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("System.Shutdown");
}
=doc 
 AudioLibrary.GetRecentlyPlayedSongs : Retrieve recently played songs
=cut
sub AudioLibraryGetRecentlyPlayedSongs {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetRecentlyPlayedSongs");
}
=doc 
 PVR.GetChannels : Retrieves the channel list
=cut
sub PVRGetChannels {
my ($self,$params) = (shift,shift);
 unless ( $params->{channelgroupid} ) {  print "[PVRGetChannels] Need a argument : channelgroupid\n"; }
$self->{params} = $params;
$self->Send("PVR.GetChannels");
}
=doc 
 Input.ShowCodec : Show codec information of the playing item
=cut
sub InputShowCodec {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.ShowCodec");
}
=doc 
 JSONRPC.Ping : Ping responder
=cut
sub JSONRPCPing {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("JSONRPC.Ping");
}
=doc 
 Input.ExecuteAction : Execute a specific action
=cut
sub InputExecuteAction {
my ($self,$params) = (shift,shift);
 unless ( $params->{action} ) {  print "[InputExecuteAction] Need a argument : action\n"; }
$self->{params} = $params;
$self->Send("Input.ExecuteAction");
}
=doc 
 VideoLibrary.Scan : Scans the video sources for new library items
=cut
sub VideoLibraryScan {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.Scan");
}
=doc 
 Player.SetSubtitle : Set the subtitle displayed by the player
=cut
sub PlayerSetSubtitle {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerSetSubtitle] Need a argument : playerid\n"; }
 unless ( $params->{subtitle} ) {  print "[PlayerSetSubtitle] Need a argument : subtitle\n"; }
$self->{params} = $params;
$self->Send("Player.SetSubtitle");
}
=doc 
 VideoLibrary.GetMovieSetDetails : Retrieve details about a specific movie set
=cut
sub VideoLibraryGetMovieSetDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{setid} ) {  print "[VideoLibraryGetMovieSetDetails] Need a argument : setid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetMovieSetDetails");
}
=doc 
 AudioLibrary.GetSongDetails : Retrieve details about a specific song
=cut
sub AudioLibraryGetSongDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{songid} ) {  print "[AudioLibraryGetSongDetails] Need a argument : songid\n"; }
$self->{params} = $params;
$self->Send("AudioLibrary.GetSongDetails");
}
=doc 
 Input.ShowOSD : Show the on-screen display for the current player
=cut
sub InputShowOSD {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.ShowOSD");
}
=doc 
 Input.Select : Select current item in GUI
=cut
sub InputSelect {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Select");
}
=doc 
 VideoLibrary.GetMusicVideoDetails : Retrieve details about a specific music video
=cut
sub VideoLibraryGetMusicVideoDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{musicvideoid} ) {  print "[VideoLibraryGetMusicVideoDetails] Need a argument : musicvideoid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetMusicVideoDetails");
}
=doc 
 GUI.ShowNotification : Shows a GUI notification
=cut
sub GUIShowNotification {
my ($self,$params) = (shift,shift);
 unless ( $params->{title} ) {  print "[GUIShowNotification] Need a argument : title\n"; }
 unless ( $params->{message} ) {  print "[GUIShowNotification] Need a argument : message\n"; }
$self->{params} = $params;
$self->Send("GUI.ShowNotification");
}
=doc 
 VideoLibrary.RemoveTVShow : Removes the given tv show from the library
=cut
sub VideoLibraryRemoveTVShow {
my ($self,$params) = (shift,shift);
 unless ( $params->{tvshowid} ) {  print "[VideoLibraryRemoveTVShow] Need a argument : tvshowid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.RemoveTVShow");
}
=doc 
 Player.GetProperties : Retrieves the values of the given properties
=cut
sub PlayerGetProperties {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerGetProperties] Need a argument : playerid\n"; }
 unless ( $params->{properties} ) {  print "[PlayerGetProperties] Need a argument : properties\n"; }
$self->{params} = $params;
$self->Send("Player.GetProperties");
}
=doc 
 Favourites.GetFavourites : Retrieve all favourites
=cut
sub FavouritesGetFavourites {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Favourites.GetFavourites");
}
=doc 
 Playlist.Insert : Insert item(s) into playlist. Does not work for picture playlists (aka slideshows).
=cut
sub PlaylistInsert {
my ($self,$params) = (shift,shift);
 unless ( $params->{playlistid} ) {  print "[PlaylistInsert] Need a argument : playlistid\n"; }
 unless ( $params->{position} ) {  print "[PlaylistInsert] Need a argument : position\n"; }
$self->{params} = $params;
$self->Send("Playlist.Insert");
}
=doc 
 PVR.GetTimerDetails : Retrieves the details of a specific timer
=cut
sub PVRGetTimerDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{timerid} ) {  print "[PVRGetTimerDetails] Need a argument : timerid\n"; }
$self->{params} = $params;
$self->Send("PVR.GetTimerDetails");
}
=doc 
 Player.GetPlayers : Get a list of available players
=cut
sub PlayerGetPlayers {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Player.GetPlayers");
}
=doc 
 Addons.GetAddonDetails : Gets the details of a specific addon
=cut
sub AddonsGetAddonDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{addonid} ) {  print "[AddonsGetAddonDetails] Need a argument : addonid\n"; }
$self->{params} = $params;
$self->Send("Addons.GetAddonDetails");
}
=doc 
 AudioLibrary.GetAlbumDetails : Retrieve details about a specific album
=cut
sub AudioLibraryGetAlbumDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{albumid} ) {  print "[AudioLibraryGetAlbumDetails] Need a argument : albumid\n"; }
$self->{params} = $params;
$self->Send("AudioLibrary.GetAlbumDetails");
}
=doc 
 Input.Up : Navigate up in GUI
=cut
sub InputUp {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Up");
}
=doc 
 VideoLibrary.Clean : Cleans the video library from non-existent items
=cut
sub VideoLibraryClean {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.Clean");
}
=doc 
 AudioLibrary.GetGenres : Retrieve all genres
=cut
sub AudioLibraryGetGenres {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetGenres");
}
=doc 
 PVR.GetTimers : Retrieves the timers
=cut
sub PVRGetTimers {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("PVR.GetTimers");
}
=doc 
 VideoLibrary.GetMovieDetails : Retrieve details about a specific movie
=cut
sub VideoLibraryGetMovieDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{movieid} ) {  print "[VideoLibraryGetMovieDetails] Need a argument : movieid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetMovieDetails");
}
=doc 
 Profiles.GetProfiles : Retrieve all profiles
=cut
sub ProfilesGetProfiles {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Profiles.GetProfiles");
}
=doc 
 VideoLibrary.GetTVShowDetails : Retrieve details about a specific tv show
=cut
sub VideoLibraryGetTVShowDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{tvshowid} ) {  print "[VideoLibraryGetTVShowDetails] Need a argument : tvshowid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetTVShowDetails");
}
=doc 
 AudioLibrary.Clean : Cleans the audio library from non-existent items
=cut
sub AudioLibraryClean {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.Clean");
}
=doc 
 Input.Right : Navigate right in GUI
=cut
sub InputRight {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Right");
}
=doc 
 VideoLibrary.GetSeasons : Retrieve all tv seasons
=cut
sub VideoLibraryGetSeasons {
my ($self,$params) = (shift,shift);
 unless ( $params->{tvshowid} ) {  print "[VideoLibraryGetSeasons] Need a argument : tvshowid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetSeasons");
}
=doc 
 AudioLibrary.SetArtistDetails : Update the given artist with the given details
=cut
sub AudioLibrarySetArtistDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{artistid} ) {  print "[AudioLibrarySetArtistDetails] Need a argument : artistid\n"; }
$self->{params} = $params;
$self->Send("AudioLibrary.SetArtistDetails");
}
=doc 
 System.EjectOpticalDrive : Ejects or closes the optical disc drive (if available)
=cut
sub SystemEjectOpticalDrive {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("System.EjectOpticalDrive");
}
=doc 
 Profiles.LoadProfile : Load the specified profile
=cut
sub ProfilesLoadProfile {
my ($self,$params) = (shift,shift);
 unless ( $params->{profile} ) {  print "[ProfilesLoadProfile] Need a argument : profile\n"; }
$self->{params} = $params;
$self->Send("Profiles.LoadProfile");
}
=doc 
 Addons.GetAddons : Gets all available addons
=cut
sub AddonsGetAddons {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Addons.GetAddons");
}
=doc 
 Settings.GetCategories : Retrieves all setting categories
=cut
sub SettingsGetCategories {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Settings.GetCategories");
}
=doc 
 Player.Rotate : Rotates current picture
=cut
sub PlayerRotate {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerRotate] Need a argument : playerid\n"; }
$self->{params} = $params;
$self->Send("Player.Rotate");
}
=doc 
 VideoLibrary.SetTVShowDetails : Update the given tvshow with the given details
=cut
sub VideoLibrarySetTVShowDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{tvshowid} ) {  print "[VideoLibrarySetTVShowDetails] Need a argument : tvshowid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.SetTVShowDetails");
}
=doc 
 Textures.GetTextures : Retrieve all textures
=cut
sub TexturesGetTextures {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Textures.GetTextures");
}
=doc 
 Player.Zoom : Zoom current picture
=cut
sub PlayerZoom {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerZoom] Need a argument : playerid\n"; }
 unless ( $params->{zoom} ) {  print "[PlayerZoom] Need a argument : zoom\n"; }
$self->{params} = $params;
$self->Send("Player.Zoom");
}
=doc 
 Player.Seek : Seek through the playing item
=cut
sub PlayerSeek {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerSeek] Need a argument : playerid\n"; }
 unless ( $params->{value} ) {  print "[PlayerSeek] Need a argument : value\n"; }
$self->{params} = $params;
$self->Send("Player.Seek");
}
=doc 
 Playlist.GetPlaylists : Returns all existing playlists
=cut
sub PlaylistGetPlaylists {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Playlist.GetPlaylists");
}
=doc 
 Playlist.GetItems : Get all items from playlist
=cut
sub PlaylistGetItems {
my ($self,$params) = (shift,shift);
 unless ( $params->{playlistid} ) {  print "[PlaylistGetItems] Need a argument : playlistid\n"; }
$self->{params} = $params;
$self->Send("Playlist.GetItems");
}
=doc 
 VideoLibrary.GetMusicVideos : Retrieve all music videos
=cut
sub VideoLibraryGetMusicVideos {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetMusicVideos");
}
=doc 
 Files.GetDirectory : Get the directories and files in the given directory
=cut
sub FilesGetDirectory {
my ($self,$params) = (shift,shift);
 unless ( $params->{directory} ) {  print "[FilesGetDirectory] Need a argument : directory\n"; }
$self->{params} = $params;
$self->Send("Files.GetDirectory");
}
=doc 
 GUI.SetFullscreen : Toggle fullscreen/GUI
=cut
sub GUISetFullscreen {
my ($self,$params) = (shift,shift);
 unless ( $params->{fullscreen} ) {  print "[GUISetFullscreen] Need a argument : fullscreen\n"; }
$self->{params} = $params;
$self->Send("GUI.SetFullscreen");
}
=doc 
 PVR.Record : Toggle recording of a channel
=cut
sub PVRRecord {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("PVR.Record");
}
=doc 
 AudioLibrary.GetRecentlyAddedSongs : Retrieve recently added songs
=cut
sub AudioLibraryGetRecentlyAddedSongs {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetRecentlyAddedSongs");
}
=doc 
 VideoLibrary.GetRecentlyAddedMusicVideos : Retrieve all recently added music videos
=cut
sub VideoLibraryGetRecentlyAddedMusicVideos {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetRecentlyAddedMusicVideos");
}
=doc 
 AudioLibrary.GetRecentlyPlayedAlbums : Retrieve recently played albums
=cut
sub AudioLibraryGetRecentlyPlayedAlbums {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetRecentlyPlayedAlbums");
}
=doc 
 Addons.ExecuteAddon : Executes the given addon with the given parameters (if possible)
=cut
sub AddonsExecuteAddon {
my ($self,$params) = (shift,shift);
 unless ( $params->{addonid} ) {  print "[AddonsExecuteAddon] Need a argument : addonid\n"; }
$self->{params} = $params;
$self->Send("Addons.ExecuteAddon");
}
=doc 
 AudioLibrary.SetAlbumDetails : Update the given album with the given details
=cut
sub AudioLibrarySetAlbumDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{albumid} ) {  print "[AudioLibrarySetAlbumDetails] Need a argument : albumid\n"; }
$self->{params} = $params;
$self->Send("AudioLibrary.SetAlbumDetails");
}
=doc 
 AudioLibrary.GetRecentlyAddedAlbums : Retrieve recently added albums
=cut
sub AudioLibraryGetRecentlyAddedAlbums {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetRecentlyAddedAlbums");
}
=doc 
 Files.PrepareDownload : Provides a way to download a given file (e.g. providing an URL to the real file location)
=cut
sub FilesPrepareDownload {
my ($self,$params) = (shift,shift);
 unless ( $params->{path} ) {  print "[FilesPrepareDownload] Need a argument : path\n"; }
$self->{params} = $params;
$self->Send("Files.PrepareDownload");
}
=doc 
 Settings.ResetSettingValue : Resets the value of a setting
=cut
sub SettingsResetSettingValue {
my ($self,$params) = (shift,shift);
 unless ( $params->{setting} ) {  print "[SettingsResetSettingValue] Need a argument : setting\n"; }
$self->{params} = $params;
$self->Send("Settings.ResetSettingValue");
}
=doc 
 Application.GetProperties : Retrieves the values of the given properties
=cut
sub ApplicationGetProperties {
my ($self,$params) = (shift,shift);
 unless ( $params->{properties} ) {  print "[ApplicationGetProperties] Need a argument : properties\n"; }
$self->{params} = $params;
$self->Send("Application.GetProperties");
}
=doc 
 System.Reboot : Reboots the system running Kodi
=cut
sub SystemReboot {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("System.Reboot");
}
=doc 
 PVR.GetChannelGroups : Retrieves the channel groups for the specified type
=cut
sub PVRGetChannelGroups {
my ($self,$params) = (shift,shift);
 unless ( $params->{channeltype} ) {  print "[PVRGetChannelGroups] Need a argument : channeltype\n"; }
$self->{params} = $params;
$self->Send("PVR.GetChannelGroups");
}
=doc 
 AudioLibrary.Scan : Scans the audio sources for new library items
=cut
sub AudioLibraryScan {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.Scan");
}
=doc 
 Input.Home : Goes to home window in GUI
=cut
sub InputHome {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Home");
}
=doc 
 VideoLibrary.GetMovies : Retrieve all movies
=cut
sub VideoLibraryGetMovies {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetMovies");
}
=doc 
 Input.ContextMenu : Shows the context menu
=cut
sub InputContextMenu {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.ContextMenu");
}
=doc 
 Playlist.Clear : Clear playlist
=cut
sub PlaylistClear {
my ($self,$params) = (shift,shift);
 unless ( $params->{playlistid} ) {  print "[PlaylistClear] Need a argument : playlistid\n"; }
$self->{params} = $params;
$self->Send("Playlist.Clear");
}
=doc 
 Files.GetSources : Get the sources of the media windows
=cut
sub FilesGetSources {
my ($self,$params) = (shift,shift);
 unless ( $params->{media} ) {  print "[FilesGetSources] Need a argument : media\n"; }
$self->{params} = $params;
$self->Send("Files.GetSources");
}
=doc 
 AudioLibrary.GetArtistDetails : Retrieve details about a specific artist
=cut
sub AudioLibraryGetArtistDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{artistid} ) {  print "[AudioLibraryGetArtistDetails] Need a argument : artistid\n"; }
$self->{params} = $params;
$self->Send("AudioLibrary.GetArtistDetails");
}
=doc 
 Player.GetItem : Retrieves the currently played item
=cut
sub PlayerGetItem {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerGetItem] Need a argument : playerid\n"; }
$self->{params} = $params;
$self->Send("Player.GetItem");
}
=doc 
 VideoLibrary.GetTVShows : Retrieve all tv shows
=cut
sub VideoLibraryGetTVShows {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetTVShows");
}
=doc 
 Addons.SetAddonEnabled : Enables/Disables a specific addon
=cut
sub AddonsSetAddonEnabled {
my ($self,$params) = (shift,shift);
 unless ( $params->{addonid} ) {  print "[AddonsSetAddonEnabled] Need a argument : addonid\n"; }
 unless ( $params->{enabled} ) {  print "[AddonsSetAddonEnabled] Need a argument : enabled\n"; }
$self->{params} = $params;
$self->Send("Addons.SetAddonEnabled");
}
=doc 
 PVR.GetChannelGroupDetails : Retrieves the details of a specific channel group
=cut
sub PVRGetChannelGroupDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{channelgroupid} ) {  print "[PVRGetChannelGroupDetails] Need a argument : channelgroupid\n"; }
$self->{params} = $params;
$self->Send("PVR.GetChannelGroupDetails");
}
=doc 
 GUI.GetStereoscopicModes : Returns the supported stereoscopic modes of the GUI
=cut
sub GUIGetStereoscopicModes {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("GUI.GetStereoscopicModes");
}
=doc 
 PVR.Scan : Starts a channel scan
=cut
sub PVRScan {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("PVR.Scan");
}
=doc 
 Input.Left : Navigate left in GUI
=cut
sub InputLeft {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Input.Left");
}
=doc 
 Player.GetActivePlayers : Returns all active players
=cut
sub PlayerGetActivePlayers {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Player.GetActivePlayers");
}
=doc 
 VideoLibrary.SetEpisodeDetails : Update the given episode with the given details
=cut
sub VideoLibrarySetEpisodeDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{episodeid} ) {  print "[VideoLibrarySetEpisodeDetails] Need a argument : episodeid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.SetEpisodeDetails");
}
=doc 
 Player.SetShuffle : Shuffle/Unshuffle items in the player
=cut
sub PlayerSetShuffle {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerSetShuffle] Need a argument : playerid\n"; }
 unless ( $params->{shuffle} ) {  print "[PlayerSetShuffle] Need a argument : shuffle\n"; }
$self->{params} = $params;
$self->Send("Player.SetShuffle");
}
=doc 
 Application.Quit : Quit application
=cut
sub ApplicationQuit {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("Application.Quit");
}
=doc 
 VideoLibrary.RemoveMovie : Removes the given movie from the library
=cut
sub VideoLibraryRemoveMovie {
my ($self,$params) = (shift,shift);
 unless ( $params->{movieid} ) {  print "[VideoLibraryRemoveMovie] Need a argument : movieid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.RemoveMovie");
}
=doc 
 Playlist.Remove : Remove item from playlist. Does not work for picture playlists (aka slideshows).
=cut
sub PlaylistRemove {
my ($self,$params) = (shift,shift);
 unless ( $params->{playlistid} ) {  print "[PlaylistRemove] Need a argument : playlistid\n"; }
 unless ( $params->{position} ) {  print "[PlaylistRemove] Need a argument : position\n"; }
$self->{params} = $params;
$self->Send("Playlist.Remove");
}
=doc 
 AudioLibrary.GetArtists : Retrieve all artists
=cut
sub AudioLibraryGetArtists {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("AudioLibrary.GetArtists");
}
=doc 
 PVR.GetRecordingDetails : Retrieves the details of a specific recording
=cut
sub PVRGetRecordingDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{recordingid} ) {  print "[PVRGetRecordingDetails] Need a argument : recordingid\n"; }
$self->{params} = $params;
$self->Send("PVR.GetRecordingDetails");
}
=doc 
 VideoLibrary.GetGenres : Retrieve all genres
=cut
sub VideoLibraryGetGenres {
my ($self,$params) = (shift,shift);
 unless ( $params->{type} ) {  print "[VideoLibraryGetGenres] Need a argument : type\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.GetGenres");
}
=doc 
 VideoLibrary.SetSeasonDetails : Update the given season with the given details
=cut
sub VideoLibrarySetSeasonDetails {
my ($self,$params) = (shift,shift);
 unless ( $params->{seasonid} ) {  print "[VideoLibrarySetSeasonDetails] Need a argument : seasonid\n"; }
$self->{params} = $params;
$self->Send("VideoLibrary.SetSeasonDetails");
}
=doc 
 XBMC.GetInfoLabels : Retrieve info labels about Kodi and the system
=cut
sub XBMCGetInfoLabels {
my ($self,$params) = (shift,shift);
 unless ( $params->{labels} ) {  print "[XBMCGetInfoLabels] Need a argument : labels\n"; }
$self->{params} = $params;
$self->Send("XBMC.GetInfoLabels");
}
=doc 
 Textures.RemoveTexture : Remove the specified texture
=cut
sub TexturesRemoveTexture {
my ($self,$params) = (shift,shift);
 unless ( $params->{textureid} ) {  print "[TexturesRemoveTexture] Need a argument : textureid\n"; }
$self->{params} = $params;
$self->Send("Textures.RemoveTexture");
}
=doc 
 VideoLibrary.GetRecentlyAddedMovies : Retrieve all recently added movies
=cut
sub VideoLibraryGetRecentlyAddedMovies {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("VideoLibrary.GetRecentlyAddedMovies");
}
=doc 
 Player.GoTo : Go to previous/next/specific item in the playlist
=cut
sub PlayerGoTo {
my ($self,$params) = (shift,shift);
 unless ( $params->{playerid} ) {  print "[PlayerGoTo] Need a argument : playerid\n"; }
 unless ( $params->{to} ) {  print "[PlayerGoTo] Need a argument : to\n"; }
$self->{params} = $params;
$self->Send("Player.GoTo");
}
=doc 
 GUI.SetStereoscopicMode : Sets the stereoscopic mode of the GUI to the given mode
=cut
sub GUISetStereoscopicMode {
my ($self,$params) = (shift,shift);
 unless ( $params->{mode} ) {  print "[GUISetStereoscopicMode] Need a argument : mode\n"; }
$self->{params} = $params;
$self->Send("GUI.SetStereoscopicMode");
}
=doc 
 JSONRPC.Version : Retrieve the JSON-RPC protocol version.
=cut
sub JSONRPCVersion {
my ($self,$params) = (shift,shift);
$self->{params} = $params;
$self->Send("JSONRPC.Version");
}
1;