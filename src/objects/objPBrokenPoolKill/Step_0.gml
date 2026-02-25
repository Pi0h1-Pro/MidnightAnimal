if image_index < 19 image_index += 0.25
else {
    instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool)
    my_id = instance_create(x, y, objDeadBody)
    my_id.image_angle = image_angle
    my_id.sprite_index = sprEBrokenPoolKill
    my_id.image_index = 15
    scrFinishExecution(sprPWalkUnarmed)
}
if image_index <= 4 hurtindex = image_index
if image_index >= 4 and bled = 0 {
    bled = 1
    targetindex = 3
    sound_ps(choose(sndCut1, sndCut2))
    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
    global.shake = 18
    scrMeleeBlood(x, y)
    repeat(3 + random(3)) {
        instance_create(x + lengthdir_x(13, image_angle - 5) - 1 + random(2), y + lengthdir_y(13, image_angle - 5) - 1 + random(2), objBloodSquirt)
    }
}

