if image_index < 10 image_index += 0.5
else {
    myx = x + lengthdir_x(5, image_angle)
    myy = y + lengthdir_y(5, image_angle)
    global.myscore += 200
    global.combotime = 240
    global.combo += 1
    global.kills += 1
    my_id = instance_create(myx, myy, objBloodPool)
    my_id = instance_create(x, y, objDeadBody)
    my_id.sprite_index = sprEMercyKillStomped
    my_id.image_index = random(4)
    my_id.image_angle = image_angle
    global.angle = image_angle - 180
    my_id = instance_create(x, y, objPlayer)
    my_id.reload = 10
    if bag = 1 my_id.sprite_index = sprPWalkBag
    with my_id move_outside_solid(global.angle, 16)
    instance_destroy()
}

if bled = 0 and image_index >= 6 {
    bled = 1
    sound_ps(choose(sndCut1, sndCut2))
    sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
    sound_ps(sndPunch)
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    global.shake = 16
    repeat(4 + random(6)) {
        my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt)
        my_id.image_angle = image_angle - 120 + random(240)
    }
    repeat(3) instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
}


