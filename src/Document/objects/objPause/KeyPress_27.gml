/// @description  Resume game.
if on=0 exit
on=0

sound_ps(sndPause)
audio_stop_sound(mscInbou);
audio_resume_sound(global.CurrentSong);

