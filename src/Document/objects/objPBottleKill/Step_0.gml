if image_index < 17 image_index += 0.5
else {
    my_id = instance_create(x, y, objDeadBody)
    my_id.image_angle = image_angle
    my_id.sprite_index = sprEGroundBottle
    my_id.image_yscale = 1
    
    scrFinishExecution(sprPWalkUnarmed)
}
if image_index >= 5 and bled = 0 {
    bled = 1
    sound_ps(sndBottleBreak)
}

if image_index >= 9 and bled = 1 {
    bled = 2
    sound_ps(choose(sndCut1, sndCut2))
    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    global.shake = 8
    repeat(3 + random(2)) {
        my_id = instance_create(x + lengthdir_x(14, image_angle) - 1 + random(2), y + lengthdir_y(14, image_angle) - 1 + random(2), objBloodSquirt)
        if round(random(1)) my_id.image_angle = image_angle - 110 + random(20)
        else my_id.image_angle = image_angle + 110 - random(20)
    }
    repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
}

if image_index >= 14 and bled = 2 {
    bled = 3
    sound_ps(choose(sndCut1, sndCut2))
    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    global.shake = 12
    repeat(3 + random(2)) {
        my_id = instance_create(x + lengthdir_x(14, image_angle) - 1 + random(2), y + lengthdir_y(14, image_angle) - 1 + random(2), objBloodSquirt)
        if round(random(1)) my_id.image_angle = image_angle - 110 + random(20)
        else my_id.image_angle = image_angle + 110 - random(20)
    }
    repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
}

