globalvar check;
scrMoveSolidOn()
if weaponfind = 0 {
    i = 0
    target = -1231423
    if checkreload > 0 checkreload -= 1
    else {
        checkreload = 10
        global.check = 0
        while i < instance_number(objWeapon) and global.check = 0 {
            target = scrInstanceNearest(objWeapon, i)
            if instance_exists(target) {
                if target.image_index <= 7 {
                    if !scrCollisionLineExt(x, y, target.x, target.y, 4) {
                        global.check = 1
                        weaponfind = 1
                    }
                }
            }
            i += 1
        }
    }

    if weaponfind = 0 and instance_exists(objPlayer) {
        dist = point_distance(x, y, objPlayer.x, objPlayer.y)
        if dist < 64 {
            dir = point_direction(objPlayer.x, objPlayer.y, x, y)
            direction = dir - 180
            if place_free(x + lengthdir_x(1, dir), y + lengthdir_y(1, dir)) {
                x += lengthdir_x(1, dir)
                y += lengthdir_y(1, dir)
            }
            image_speed = 0.1
        }
    }

} else {
    if !instance_exists(target) {
        weaponfind = 0 speed = 0
    } else {
        speed = 2
        direction = point_direction(x, y, target.x, target.y)
        image_speed = 0.2
        if place_meeting(x, y, target) {
            my_id = -123123
                //if target.image_index=9 {my_id=instance_create(x,y,objGang) my_id.sprite_index=sprEGangWalkUzi}
            if target.image_index = 1 {
                my_id = instance_create(x, y, objGang) my_id.sprite_index = sprEGangWalkShotgun
            }

            if target.image_index = 0 exit
            if target.image_index = 1 {
                my_id = instance_create(x, y, objGang) my_id.sprite_index = sprEGangWalkShotgun
            }
            if target.image_index = 2 exit
            if target.image_index = 3 {
                my_id = instance_create(x, y, objGangMelee) my_id.sprite_index = sprEGangWalkPipe
            }
            if target.image_index = 4 {
                my_id = instance_create(x, y, objGangMelee) my_id.sprite_index = sprEGangWalkBat
            }
            if target.image_index = 5 {
                my_id = instance_create(x, y, objGangMelee) my_id.sprite_index = sprEGangWalkKnife
            }
            if target.image_index = 6 exit
            if target.image_index = 7 exit
            if target.image_index = 8 exit
            if target.image_index = 9 exit
            if target.image_index = 10 exit
            if target.image_index = 11 exit
            if target.image_index = 12 exit
            if target.image_index = 13 exit
            if target.image_index = 14 exit
            if target.image_index = 15 exit
            if target.image_index = 16 exit
            if target.image_index = 17 exit
            if target.image_index = 18 exit
            if target.image_index = 19 exit
            if target.image_index = 20 exit
            if target.image_index = 21 exit
            if target.image_index = 22 exit
            if target.image_index = 23 exit
            if target.image_index = 24 exit
            if target.image_index = 25 exit
            if target.image_index = 26 exit
            if target.image_index = 27 {
                my_id = instance_create(x, y, objGang) my_id.sprite_index = sprEGangWalk9mm
            }
            if target.image_index = 28 exit
            if target.image_index = 29 exit
            if target.image_index = 30 exit
            if target.image_index = 31 exit
            if target.image_index = 32 exit
            if target.image_index = 33 exit
            if target.image_index = 34 {
                my_id = instance_create(x, y, objGangMelee) my_id.sprite_index = sprEGangWalkChain
            }
            if target.image_index = 35 exit
            if target.image_index = 36 exit
            if target.image_index = 37 exit
            if target.image_index = 38 exit
            if target.image_index = 39 exit
            if target.image_index = 40 exit
            if target.image_index = 41 exit
            if target.image_index = 42 exit
            if target.image_index = 43 exit
            if target.image_index = 44 exit
            if target.image_index = 45 exit
            if target.image_index > 7 exit
            if instance_exists(target) my_id.ammo = target.ammo
                //with my_id scrChasePlayer()
            sound_play(sndPickupWeapon)
            with target instance_destroy()
            instance_destroy()
        }

        if !place_free(x + hspeed * 3, y + vspeed * 3) {
            if !place_free(x + hspeed * 3, y) hspeed = -hspeed
            if !place_free(x, y + vspeed * 3) vspeed = -vspeed
            weaponfind = 0
        }

    }
}

scrMoveSolidOff()
exit

