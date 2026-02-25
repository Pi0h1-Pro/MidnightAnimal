/// @description  Start rain after thunder sound plays.
if !audio_is_playing(sndRain) {
    audio_play_sound(sndRain,10,1)
    audio_sound_gain(sndRain, 0, 0)
    audio_sound_gain(sndRain, rain_sound_volume, 300)
}
    
rain_started = true


