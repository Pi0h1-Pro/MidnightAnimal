/// @description  Add health.

// Collect health only if the player is low on health.
if objPlayer.hp < objPlayer.max_hp {
    with other hp += round(max_hp * health_boost)
    create_health_number(string(round(objPlayer.max_hp * objPlayer.health_boost)), 1)
    sound_ps(sndCollectHealth)
    global.screeneffect = 16
    instance_destroy()
}

