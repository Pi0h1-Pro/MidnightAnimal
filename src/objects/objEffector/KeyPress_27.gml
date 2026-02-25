/// @description Pause the game.
if instance_exists(objPlayerDead) exit 

if fade = 0 and amount = 180 {
    if scrMovingPlayerExists() {
        if objPlayer.persistent = 1 objPlayer.persistent = 0
    }
    sound_ps(sndPause)
    
    // Control phone spawn.
    if !instance_exists(mnPhone) instance_create(x, y, mnPhone)
    global.screeneffect = 6
    
    // Control whether the phone is active or not.
    if instance_exists(mnPhone) {
        with mnPhone active = !active 
        if mnPhone.active = 0 global.active = 1
    }
}

