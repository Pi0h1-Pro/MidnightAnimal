if ammo > 0 {

    //ASSAULT RIFLE
    if sprite_index = sprEWalkM16 or sprite_index = sprPoliceWalkM16 or sprite_index = sprSwatWalkM16 {
        if reload > 0 reload -= 1
        else {
            shake = 1
            ammo -= 1
            light = 10
            global.shake = 3
            sound_ps(sndEM16)
            mask_index = sprWeaponMask
            reload = 2 / (global.timeMultiplier * global.timeMultiplier)
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall)  {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                my_id = instance_create(x + lengthdir_x(26, angle), y + lengthdir_y(26, angle), objEBullet)
                if instance_exists(my_id) {
                    my_id.direction = angle - 10 + random(20)
                    my_id.speed = (12 + random(4)) * (global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier )
                    my_id.image_angle = my_id.direction
                }
            }
            my_id = instance_create(x + lengthdir_x(5, angle - 5 * image_yscale), y + lengthdir_y(5, angle - 5 * image_yscale), objShell)
            my_id.sprite_index = sprM16Shell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            mask_index = sprMask
        }
    }

    //AK-47
    if sprite_index = sprEWalkAK {
        if reload > 0 reload -= 1
        else {
            shake = 1
            ammo -= 1
            light = 10
            global.shake = 3
            sound_ps(sndAK)
            mask_index = sprWeaponMask
            reload = 5 / (global.timeMultiplier * global.timeMultiplier)
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                my_id = instance_create(x + lengthdir_x(26, angle), y + lengthdir_y(26, angle), objEBullet)
                if instance_exists(my_id) {
                    my_id.direction = angle - 10 + random(20)
                    my_id.speed = (12 + random(4)) * (global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier)
                    my_id.image_angle = my_id.direction
                }
            }
            my_id = instance_create(x + lengthdir_x(5, angle - 5 * image_yscale), y + lengthdir_y(5, angle - 5 * image_yscale), objShell)
            my_id.sprite_index = sprM16Shell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            mask_index = sprMask
        }
    }

//Thompson submachine gun.
    if sprite_index = sprEWalkThompson {
        if reload > 0 reload -= 1
        else {
            shake = 1
            ammo -= 1
            light = 10
            global.shake = 3
            sound_ps(sndThompson)
            mask_index = sprWeaponMask
            reload = (1 + round(random(2))) / (global.timeMultiplier * global.timeMultiplier)
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                my_id = instance_create(x + lengthdir_x(26, angle), y + lengthdir_y(26, angle), objEBullet)
                if instance_exists(my_id) {
                    my_id.direction = angle - 10 + random(20)
                    my_id.speed = (12 + random(4)) * (global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier)
                    my_id.image_angle = my_id.direction
                }
            }
            my_id = instance_create(x + lengthdir_x(5, angle - 5 * image_yscale), y + lengthdir_y(5, angle - 5 * image_yscale), objShell)
            my_id.sprite_index = sprM16Shell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            mask_index = sprMask
        }
    }
    
    //AA-12.
    if sprite_index = sprEWalkAutomaticShotgun {
        if reload > 0 reload -= 1
        else {
            shake = 1
            ammo -= 1
            light = 10
            global.shake = 3
            sound_ps(sndAA12)
            mask_index = sprWeaponMask
            reload = (1 + round(random(2))) / (global.timeMultiplier * global.timeMultiplier)
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                repeat(8) {
                    my_id = instance_create(x + lengthdir_x(26, angle), y + lengthdir_y(26, angle), objEBullet)
                    if instance_exists(my_id) {
                        my_id.direction = angle - 6 + random(12)
                        my_id.speed = (15 + random(4)) * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
            }
            my_id = instance_create(x + lengthdir_x(5, angle - 5 * image_yscale), y + lengthdir_y(5, angle - 5 * image_yscale), objShell)
            my_id.sprite_index = sprShotgunShell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            mask_index = sprMask
        }
    }
    
    //SHOTGUN
    if sprite_index = sprEWalkShotgun or sprite_index = sprPoliceWalkShotgun or sprite_index = sprEGangWalkShotgun {
        if reload > 0 reload -= 1
        else {
            sound_ps(sndShotgun)
            ammo -= 1
            shake = 3
            reload = 60 / (global.timeMultiplier * global.timeMultiplier)
            global.shake = 6
            mask_index = sprWeaponMask
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                repeat(8) {
                    my_id = instance_create(x, y, objSmokeHit)
                    global.dir = angle
                    with my_id move_contact_all(global.dir, 26)
                }
            } else {
                repeat(8) {
                    my_id = instance_create(x + lengthdir_x(26, angle), y + lengthdir_y(26, angle), objEBullet)
                    if instance_exists(my_id) {
                        my_id.direction = angle - 6 + random(12)
                        my_id.speed = (12 + random(4)) * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
            }
            my_id = instance_create(x + lengthdir_x(5, angle - 5 * image_yscale), y + lengthdir_y(5, angle - 5 * image_yscale), objShell)
            my_id.sprite_index = sprShotgunShell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = 1 + random(3)
            light = 20
            mask_index = sprMask
        }
    }

    //DOUBLE-BARREL
    if sprite_index = sprEWalkDoubleBarrel {
        if reload > 0 reload -= 1
        else {
            sound_ps(sndShotgun)
            ammo -= 1
            shake = 3
            reload = 15 / (global.timeMultiplier * global.timeMultiplier)
            mask_index = sprWeaponMask
            global.shake = 6
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                repeat(16) {
                    my_id = instance_create(x, y, objSmokeHit)
                    global.dir = angle
                    with my_id move_contact_all(global.dir, 26)
                }
            } else {
                repeat(16) {
                    my_id = instance_create(x + lengthdir_x(26, angle), y + lengthdir_y(26, angle), objEBullet)
                    if instance_exists(my_id) {
                        my_id.direction = angle - 10 + random(20)
                        my_id.speed = (12 + random(4)) * (global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier)
                        my_id.image_angle = my_id.direction
                    }
                }
            }
            light = 20
            mask_index = sprMask
        }
    }

    //SILENCED PISTOL
    if sprite_index = sprEWalkSilencer {
        if reload > 0 reload -= 1
        else {
            sound_ps(sndSilencedPistol)
            ammo -= 1
            shake = 1
            reload = 10 / (global.timeMultiplier * global.timeMultiplier)
            global.shake = 2
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                my_id = instance_create(x + lengthdir_x(20, angle), y + lengthdir_y(20, angle), objEBullet)
                if instance_exists(my_id) {
                    my_id.direction = angle - 3 + random(6)
                    my_id.speed = 16 * (global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier)
                    my_id.image_angle = my_id.direction
                }
            }
            my_id = instance_create(x + lengthdir_x(16, angle - 4 * image_yscale), y + lengthdir_y(16, angle - 4 * image_yscale), objShell)
            my_id.sprite_index = sprUziShell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            light = 12
        }
    }

    //HANDGUN
    if sprite_index = sprEWalkHandgun or sprite_index = sprEGangWalk9mm {
        if reload > 0 reload -= 1
        else {
            sound_ps(sndHandgun)
            ammo -= 1
            shake = 1
            reload = 10 / (global.timeMultiplier * global.timeMultiplier)
            global.shake = 2
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                my_id = instance_create(x + lengthdir_x(20, angle), y + lengthdir_y(20, angle), objEBullet)
                if instance_exists(my_id) {
                    my_id.direction = angle - 3 + random(6)
                    my_id.speed = 16 * (global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier)
                    my_id.image_angle = my_id.direction
                }
            }
            my_id = instance_create(x + lengthdir_x(16, angle - 4 * image_yscale), y + lengthdir_y(16, angle - 4 * image_yscale), objShell)
            my_id.sprite_index = sprUziShell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            light = 12
        }
    }

    //UZI
    if sprite_index = sprEGangWalkUzi {
        if reload > 0 reload -= 1
        else {
            sound_ps(sndUzi)
            ammo -= 1
            shake = 1
            reload = 10 / (global.timeMultiplier * global.timeMultiplier)
            global.shake = 2
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                my_id = instance_create(x + lengthdir_x(20, angle), y + lengthdir_y(20, angle), objEBullet)
                if instance_exists(my_id) {
                    my_id.direction = angle - 3 + random(6)
                    my_id.speed = 16 * (global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier)
                    my_id.image_angle = my_id.direction
                }
            }
            my_id = instance_create(x + lengthdir_x(16, angle - 4 * image_yscale), y + lengthdir_y(16, angle - 4 * image_yscale), objShell)
            my_id.sprite_index = sprUziShell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            light = 12
        }
    }


    //UZI
    if sprite_index = sprCommandoWalk {
        if reload > 0 reload -= 1
        else {
            sound_ps(sndHandgun)
            ammo -= 1
            shake = 1
            reload = 5 / (global.timeMultiplier * global.timeMultiplier)
            sprite_index = sprCommandoAttack
            global.shake = 2
            if place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolid) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objSolidCaster) or place_meeting(x + lengthdir_x(8, angle), y + lengthdir_y(8, angle), objWall) {
                my_id = instance_create(x, y, objSmokeHit)
                my_id.image_angle = image_angle
                global.dir = angle
                with my_id {
                    move_contact_solid(global.dir, 16)
                }
            } else {
                if image_index >= 0 and image_index < 2 {
                    my_id = instance_create(x + lengthdir_x(27, direction + 20), y + lengthdir_y(27, direction + 20), objEBullet)
                    my_id.direction = direction - 4 + random(8)
                    my_id.speed = 20 * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier
                    my_id.image_angle = my_id.direction
                    sound_ps(sndHandgun)
                }

                if image_index >= 2 and image_index < 4 {
                    my_id = instance_create(x + lengthdir_x(27, direction - 20), y + lengthdir_y(27, direction - 20), objEBullet)
                    my_id.direction = direction - 4 + random(8)
                    my_id.speed = 20 * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier * global.timeMultiplier
                    my_id.image_angle = my_id.direction
                    sound_ps(sndHandgun)
                }

            }
            my_id = instance_create(x + lengthdir_x(16, angle - 4 * image_yscale), y + lengthdir_y(16, angle - 4 * image_yscale), objShell)
            my_id.sprite_index = sprUziShell
            my_id.image_angle = angle
            my_id.direction = angle - 90 * image_yscale - 20 + random(30)
            my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier)
            light = 12
        }
    }



}

