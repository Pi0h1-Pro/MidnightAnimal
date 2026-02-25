if image_index < 19 image_index += 0.25
else {
    instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool)
    my_id = instance_create(x, y, objDeadBody)
    my_id.image_angle = image_angle
    my_id.sprite_index = bottom
    my_id.image_index = 19

    scrFinishExecution(sprPWalkSkateboard)
}

if image_index >= 12 and bled = 0 {
    bled = 1
    hurtindex = 12
    targetindex = 19
    global.shake = 18
    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
    sound_ps(sndPunch)
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    repeat(4 + random(6)) {
        my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt)
        my_id.image_angle = image_angle - 120 + random(240)
    }
    repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)

}

