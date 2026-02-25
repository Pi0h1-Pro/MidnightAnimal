/// @description  Trigger mine.
if global.character = 1 exit
if global.done = 1 exit
if !instance_exists(objPlayer) exit
if point_distance(x, y, objPlayer.x, objPlayer.y) < 36 and countdown = 0 {
    sound_ps(sndDetonateMine)
    countdown = 1
}

if countdown = 1 {
    wait -= 5
}

if wait = 0 {

    //with objExplosiveCircle instance_destroy()
    
    // Create explosion.
    instance_create(x, y, objGrenadeExplosion)
    instance_destroy()
}

