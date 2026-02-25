show = false;
width = 128;
height = 64;
rollspeed = (game_speed/30) * 2;

x = 0
y = display_get_gui_height() - 64

currentsound = noone;
currentname = "";
currentartist = "";

listsound = ds_list_create();
listartist = ds_list_create();
listsongname = ds_list_create();
listsongduration = ds_list_create();

valpha = 0;
emitter = audio_emitter_create();
volume = 1;
pitch = 1;
audio_emitter_pitch(emitter, pitch);
audio_emitter_gain(emitter, volume);

key_volumedown = vk_pagedown;
key_volumeup = vk_pageup;

color_frame = c_black;
color_fill = c_black;
alpha_frame = 0.8;
alpha_fill = 0.6;
isPaused = false;
index = 0;
showduration = 3;

