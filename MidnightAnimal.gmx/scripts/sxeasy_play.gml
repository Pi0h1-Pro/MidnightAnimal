/*Shaltif's Xtreme Music and Sound
--The Fmod / WinAmp Wrapper for Game Maker
--Brandon Rohrer ? 2003-2006
============================================
sxeasy_play(filename,sxms.FMOD_,channel);
===
argument0 = STRING - Filename of file to play
argument1 = REAL - additional flags:  sxms.FMOD_
argument2 = REAL - Channel to play on (or sxms.FMOD_CHANNEL_FREE for any)
===
return = REAL - Successful (1) or failure (0);
===
// Com:
       For argument0, you can pass the string "dialog" for a dialog box to
       display.
       
       Argument1 already has a few flags by default.  The only flag you
       could add is sxms.FMOD_ACCURATETIME or sxms.FMOD_LOOP_
       
       Argument2 is the channel you want to play on.  Usually this is either
       0 or sxms.FMOD_CHANNEL_FREE.
*/
var lastsong;
if file_exists(working_directory+"\restartmusic") nothing=1 else bgm_Stop(global.currentsong)
lastsong=global.currentsong
thissong=string_replace(argument0,"mp3","ogg")
global.currentsong=bgm_LoadStream(thissong,1)
bgm_Play(global.currentsong,1)
if string(lastsong)="" nothing=1 else {if file_exists(working_directory+"\restartmusic") nothing=1 else bgm_Unload(lastsong)}

//if string(argument0)="-1" nothing=1 else {
//if (argument0 = "dialog") { argument0 = get_open_filename("All Files|*.*",""); };
//if (string_pos("http:",argument0) != 1) {
//   if (!file_exists(argument0) or argument0 = "") { return 0; };
//};
//if (sxms.easyPlay) { sxeasy_stop(); };
//sxfmod_system_createSound()
//if (!external_call(sxms.dll_sxfmod_system_createSound,argument0,(argument1|sxms.SXMS_MUSIC|sxms.FMOD_LOOP_NORMAL),0,0)) { return -1; };
//sxfmod_system_playSound()
//sxms.easyChannel = external_call(sxms.dll_sxfmod_system_playSound,0,0,argument2);
//sxms.easyPlay = 1;
//sxms.easyFile = argument0;
//sxfmod_sound_setLoopCount(0,1000)
//return 1;
//}