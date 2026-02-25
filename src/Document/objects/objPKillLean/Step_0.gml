if image_index < 9 image_index += 0.45 else {
    my_id = instance_create(x, y, objDeadBody)
    my_id.sprite_index = sprite
    my_id.image_index = 9
    my_id.image_angle = image_angle
    scrFinishExecution(sprPWalkUnarmed)
}

if image_index > 5 and dead = 0 {
    sound_ps(sndHit)
    sound_ps(choose(sndPunch, sndPunch1, sndPunch2, sndPunch3))
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    
    global.shake = 16
    repeat(3 + random(2)) {
        my_id = instance_create(x + lengthdir_x(10, image_angle) - 1 + random(2), y + lengthdir_y(10, image_angle) - 1 + random(2), objBloodSquirt)
        my_id.image_angle = image_angle + 100 + random(160)
    }
    repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
    dead = 1
}


