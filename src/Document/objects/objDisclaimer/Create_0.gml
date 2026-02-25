randomize()
window_set_cursor(cr_none);
select=0
dir1=180
dir2=180
dir=0
amount=0
fade=0
alarm[0] = 120
scrInitKeys()

audio_play_sound(mscTheManWhoSoldTheWorld, 0, 0)
global.song = 0

// Create audio channels.

// Sound effects.
global.vol = 1
global.svol = 0.6

global.sound = audio_emitter_create()
audio_emitter_gain(global.sound, global.svol)
//audio_falloff_set_model(audio_falloff_exponent_distance)
//audio_emitter_falloff(global.sound, 10, 30, 1);

audio_master_gain(global.svol)
global.mvol = 1

disclaimer="This is not for you."

if !instance_exists(objConsole) instance_create(0, 0, objConsole)

/// Create global colours.
global.albedo = make_colour_rgb(225, 225, 225)
global.nigredo = make_colour_rgb(30, 30, 30)
global.citrinitas = make_colour_rgb(208, 155, 8)
global.rubedo = make_colour_rgb(158, 40, 53)

global.c_fire = make_colour_rgb(244, 206, 66)
global.c_shock = make_colour_rgb(65, 157, 193)
global.c_damage = make_colour_rgb(255, 118, 94)

global.c_health = make_colour_rgb(115, 195, 44)


