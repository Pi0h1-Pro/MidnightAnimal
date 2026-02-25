if image_index = 0 and hurtindex = targetindex and targetindex < 11 {
    if targetindex = 8 targetindex = 11
    if targetindex = 4 targetindex = 8
    if targetindex = 0 targetindex = 4
    hurtindex += 1
    image_index = 7
    sound_ps(sndHit)
    sound_ps(sndPunch)
    global.shake = 10
    
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10

    repeat(2 + random(3)) {
        instance_create(x + lengthdir_x(18, image_angle - 1 + random(2)), y + lengthdir_y(18, image_angle - 1 + random(2)), objBloodSquirt)
    }

    if targetindex = 11 {
        global.shake = 18

        repeat(3 + random(2)) {
            my_id = instance_create(x + lengthdir_x(14, image_angle) - 1 + random(2), y + lengthdir_y(14, image_angle) - 1 + random(2), objBloodSquirt)
            my_id.image_angle = image_angle - 110 + random(20)
        }
        repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)

    }
}

