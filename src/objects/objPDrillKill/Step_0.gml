if image_index < 19 image_index += 0.25
else {
    instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool)
    my_id = instance_create(x, y, objDeadBody)
    my_id.image_angle = image_angle
    my_id.sprite_index = sprEDeadDrill
    my_id.image_yscale = -1
    my_id.image_xscale = 1
    my_id.image_index = 0

    scrFinishExecution(sprPWalkDrill)
}

if image_index > 3 and image_index < 17 {
    if round(random(3)) = 2 {
        sound_ps(sndHitMarker)
        objEffector.hitalpha = 1
        objEffector.hudflash = 10
        repeat(random(2)) {
            my_id = instance_create(x + lengthdir_x(24, image_angle) - 1 + random(2), y + lengthdir_y(24, image_angle) - 1 + random(2), objBloodSquirt)
            my_id.image_angle = image_angle - 70 + random(40)
        }
    }

    if image_index < 10 {
        my_id = instance_create(x + lengthdir_x(24, image_angle) - 1 + random(2), y + lengthdir_y(24, image_angle) - 1 + random(2), objBrains)
        my_id.direction = image_angle - 70 + random(40)
        my_id.speed = random(3)
        my_id.image_angle = my_id.direction
    }
}

