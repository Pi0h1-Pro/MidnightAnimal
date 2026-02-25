if image_index = 0 and hurtindex = targetindex and targetindex < 11 {
    if targetindex = 8 targetindex = 11
    if targetindex = 4 targetindex = 8
    if targetindex = 0 {
        targetindex = 4
        if global.character = 1 {
            hurtindex = 8 targetindex = 11
        }
    }
    hurtindex += 1
    image_index = 7
    if sprite_index = sprPBatKill sound_ps(sndBatHit)
    if sprite_index = sprPKillPan sound_ps(sndPanHit)
    sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
    sound_ps(sndPunch)
    
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    
    instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objHitImpact)
    global.shake = 10
    
    repeat(1 + random(3)) {
        my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt)
        my_id.image_angle = image_angle + 120 - random(240)
    }
    instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood)
}


if targetindex = 11 {
    global.shake = 16
    sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
    sound_ps(sndPunch)
    sound_ps(sndBonesBreak)
    
    sound_ps(sndHitMarker)
    objEffector.hitalpha = 1
    objEffector.hudflash = 10
    
    repeat(4) {
        my_id = instance_create(x + lengthdir_x(22, image_angle) - 2 + random(4), y + lengthdir_y(22, image_angle) - 2 + random(4), objBloodSquirt)
        my_id.direction = point_direction(x, y, my_id.x, my_id.y)
        my_id.image_angle = image_angle + 120 - random(240)
    }
    repeat(12) {
        my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objBrains)
        my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 20 + random(40)
        my_id.speed = 2 + random(2)
    }
    repeat(6) {
        my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), choose(objFleshChunk, objHeadPiece))
        my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 10 + random(20)
        my_id.speed = 1.5 + random(1.5)
        my_id.image_index = i
        i += 1
    }
}


