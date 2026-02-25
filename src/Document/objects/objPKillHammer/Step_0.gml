if image_index < 13 image_index += 0.5 else {
    instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool)
    my_id = instance_create(x, y, objDeadBody)
    my_id.image_angle = image_angle
    my_id.sprite_index = sprEDeadHammer
    my_id.image_index = floor(random(2))
    scrFinishExecution(sprPWalkHammer)
}
if image_index >= 12 and bled = 0 {
    bled = 1
    hurtindex = 1
    targetindex = 3
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    sound_ps(choose(sndCut1, sndCut2))
    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
    sound_ps(sndBonesBreak)
    global.shake = 12

    repeat(2 + random(3)) {
        my_id = instance_create(x + lengthdir_x(22, image_angle) - 1 + random(2), y + lengthdir_y(22, image_angle) - 1 + random(2), objBloodSquirt)
        my_id.image_angle = image_angle - 120 + random(240)
        my_id.depth = 3
    }
    repeat(2) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
}

