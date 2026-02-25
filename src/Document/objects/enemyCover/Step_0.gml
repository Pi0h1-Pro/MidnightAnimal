/// @description  Combat behaviour.
if !scrMovingPlayerExists() exit


if sprite_index = sprEHidingReload {
    if image_index < sprite_get_number(sprite_index) - 1 image_index += 0.2
    else {
        sound_ps(sndSlideRifle)
        ammo = 32
        sprite_index = sprEHiding
        speed = 0
    }
    exit
}
if alertwait > -1 {
        if alertwait = 0 alert = 1
        alertwait -= 1
    }

if lookreload > 0 lookreload -= 1 else {
    seen = scrLookDist(objPlayer.x, objPlayer.y, 12, 320)
    if seen = 0 {
        path_end()
        alert = 1
    }
    if seen = 2 {
        path_end()
        alert = 2
    }
    if seen = 1 and alert > 0 {
        if alert<3 {alert=4 chasereload=0}
    }
    lookreload = 8
}
if instance_exists(objPlayerDead) or ammo = 0 {
    alert = 0
}
if alert > 0 {
    if image_index < 4 image_index += 0.25
    else {
        dist = point_distance(x, y, objPlayer.x, objPlayer.y)
        if dist > 320 alert = 0
        else {
            angle = scrRotate(angle, point_direction(x, y, objPlayer.x, objPlayer.y), 10)
            if ammo > 0 {
                if reload > 0 reload -= 1
                else {
                    sound_ps(sndMP5)
                    ammo -= 1
                    shake = 3
                    reload = 4
                    global.shake = 6
                        my_id = instance_create(x + lengthdir_x(26, angle), y + lengthdir_y(26, angle), objEBullet)
                        projectile_enemy(22, 4, 0.24, 10)
                    scrCreateMuzzleFlashEnemy()
                    my_id = instance_create(x + lengthdir_x(5, angle - 5 * image_yscale), y + lengthdir_y(5, angle - 5 * image_yscale), objShell)
                    my_id.sprite_index = sprUziShell
                    my_id.image_angle = angle
                    my_id.direction = angle - 90 * image_yscale - 20 + random(30)
                    my_id.speed = 1 + random(3)
                    light = 20
                    mask_index = sprMask
                }
            }
        }
    }
} else {
    if image_index > 0 image_index -= 0.2
    else if ammo = 0 {
        sprite_index = sprEHidingReload image_index = 0 speed = 0
    }
}

