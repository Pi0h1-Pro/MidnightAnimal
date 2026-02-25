if image_index < 11 image_index += 0.5
else {
    my_id = instance_create(x, y, objDeadBody)
    my_id.sprite_index = bottom
    my_id.image_index = 11
    my_id.image_angle = image_angle
    instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool)

    scrFinishExecution(sprPWalkBottleBroken)
}

if image_index > 2 and dead = 0 {
    sound_ps(sndHit)
    sound_ps(choose(sndCut1, sndCut2))
    global.shake = 8
    repeat(3 + random(2)) {
        my_id = instance_create(x + lengthdir_x(14, image_angle) - 1 + random(2), y + lengthdir_y(14, image_angle) - 1 + random(2), objBloodSquirt)
        if round(random(1)) my_id.image_angle = image_angle - 110 + random(20)
        else my_id.image_angle = image_angle + 110 - random(20)
    }
    repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
    dead = 1
    
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
}

if image_index > 7 and dead = 1 {
    sound_ps(sndHit)
    sound_ps(choose(sndCut1, sndCut2))
    global.shake = 12
    repeat(3 + random(2)) {
        my_id = instance_create(x + lengthdir_x(14, image_angle) - 1 + random(2), y + lengthdir_y(14, image_angle) - 1 + random(2), objBloodSquirt)
        if round(random(1)) my_id.image_angle = image_angle - 110 + random(20)
        else my_id.image_angle = image_angle + 110 - random(20)
    }
    repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
    dead = 2
    
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
}

