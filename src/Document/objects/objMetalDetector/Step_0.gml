if wait > 0 {
    wait -= 1
    if wait = 0 {
        on = 0
        audio_stop_sound(sndMetalDetector) alarmsound = 0
    }
}
if place_meeting(x, y, objPlayer) {
    if scrPlayerHasGun() {
        if on = 0 {
            if alarmsound = 0 {
                sound_ps(sndMetalDetector) alarmsound = 1
            }
            on = 1 scrHearPlayer()
        }
        wait = 50
    }
}

