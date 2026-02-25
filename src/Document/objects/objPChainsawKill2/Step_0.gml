if image_index < 17 {
    image_index += 0.35
    if image_index <= 14 squirtpos = image_index * 0.7
    else squirtpos = (14 - image_index) * 0.7
    if round(random(12)) = 2 {
        my_id = instance_create(x + lengthdir_x(squirtpos, image_angle), y + lengthdir_y(squirtpos, image_angle), objBloodSquirt)
        diradd = 90 - round(random(1)) * 180
        my_id.image_angle = image_angle - 25 + random(50) + diradd
        global.shake = 8
    }

    if round(random(12)) = 2 and image_index < 10 {
        my_id = instance_create(x + lengthdir_x(squirtpos, image_angle), y + lengthdir_y(squirtpos, image_angle), objIntestine)
        diradd = 90 - round(random(1)) * 180
        my_id.image_angle = image_angle - 25 + random(50) + diradd
        my_id.direction = my_id.image_angle
        my_id.speed = 1.5 + random(1.5)
        global.shake = 8
    }

    if round(random(13)) = 2 and image_index < 10 {
        my_id = instance_create(x + lengthdir_x(image_index * 0.7, image_angle), y + lengthdir_y(image_index * 0.7, image_angle), objFleshChunk)
        diradd = 90 - round(random(1)) * 180
        my_id.image_angle = image_angle - 25 + random(50) + diradd
        my_id.direction = my_id.image_angle
        my_id.speed = 1.5 + random(1.5)
    }
    
    if round(random(11)) = 2 {
        my_id = instance_create(x + lengthdir_x(squirtpos, image_angle), y + lengthdir_y(squirtpos, image_angle), objSplat)
        diradd = 90 - round(random(1)) * 180
        my_id.image_angle = image_angle - 25 + random(50) + diradd
        my_id.direction = my_id.image_angle
        my_id.speed = 1.5 + random(1.5)
        global.shake = 8
    }
    if round(random(16)) = 2 {
        my_id = instance_create(x + lengthdir_x(squirtpos, image_angle) - 4 + random(8), y + lengthdir_y(squirtpos, image_angle) - 4 + random(8), objSmokeHit)
        my_id.image_blend = c_red
        my_id.color1 = c_red
        my_id.color2 = c_maroon
        my_id.image_angle = point_direction(x, y, my_id.x, my_id.y)
        my_id.direction = my_id.image_angle
        my_id.speed = random(1)
    }
} else {
    repeat(3) instance_create(x, y, objBigBlood)
    my_id = instance_create(x, y, objDeadBody)
    my_id.sprite_index = bottom
    my_id.image_index = 17
    my_id.image_angle = image_angle
    scrFinishExecution(sprPWalkChainsaw)
}


