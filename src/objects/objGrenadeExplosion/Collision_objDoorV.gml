/// @description Destroy door.
if index = 8 {
    with other {
        i = 0
        repeat(16) {
            my_id = instance_create(x, y + i * 2, objDebrisLarge)
            if my_id.x < objGrenadeExplosion.x my_id.speed = random(4) else my_id.speed = random(4)
            i += 1
        }
        
        if image_angle != 0 image_angle = 0
        my_id = instance_create(x, y, objDestroyedDoor)
        my_id.speed = 2 + random(1)
        my_id.image_angle = 90 + random_range(-20, 20)
        instance_destroy()
        sound_ps(sndBreakDoor)
        global.shake=16    
    }
}


