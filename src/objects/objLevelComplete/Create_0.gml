/// @description  Effects.
with objPlayer scrPlayerDropWeapon()
global.combo = 0
global.var_greyscale_fade = 0.7
sound_ps(sndPlayerDead)
sound_ps(sndLevelComplete)
objEffector.whitealpha = 1
if audio_is_playing(global.song) audio_stop_sound(global.song)
save_data()

/// Set animation states/coordinates.

state = 0
alarm[0] = 24
alarm[1] = 80
cut = 0
alpha = 0

blot = 1280
character = 640
text1 = -240
text2 = -240
text3 = -240


