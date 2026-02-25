/// @description Pause behaviour.
factor = 0
on = 1

screen_save_part("pause.png",0,0,display_get_width(),display_get_height());
PauseSprite=sprite_add("pause.png",0,0,0,0,0);
instance_deactivate_all(true);
audio_pause_sound(global.CurrentSong);
audio_play_sound(mscInbou,0,1);
audio_sound_gain(mscInbou,global.mvol,0);

/// Set options.
option[0]="RESUME"
option[1]="RESTART"
option[2]="EXIT"
select=0
wait=20
startx=x
x+=4

/// Set states / coordinates.
state = 0
alarm[0] = 10
cut = 0
alpha = 0

// Set animation coordinates.
character = 640
texty = 120
optionsx = 396

