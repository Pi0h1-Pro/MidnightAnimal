/// @description  Open/close door.
if !scrMovingPlayerExists() exit
if locked = 1 or abs(swingspeed) > 3.5 nothing = 1
else {
    global.my_id = id
    with objEnemy {
        if place_meeting(x, y, global.my_id) {
            global.my_id.target = id
            with global.my_id {
                swinger = 2
                if abs(swingspeed) > 3.5 exit
                if abs(swingspeed) < 2 sound_ps(choose(sndDoorOpen1, sndDoorOpen2))
                if x > target.x and target.y < y {
                    swingspeed = -16 exit
                }
                if x > target.x and target.y > y {
                    swingspeed = 16 exit
                }
                if target.y < y + lengthdir_y(32, image_angle) swingspeed = -16
                else swingspeed = 16
            }
        }
    }

    // Player collision.
    if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 {
        if keyboard_check_pressed(global.interactkey) {

            // Open door.
            if locked = 1 exit
            swinger = 1
            if abs(swingspeed) > 3.5 exit
            if abs(swingspeed) < 2 sound_ps(choose(sndDoorOpen1, sndDoorOpen2))
            if x > objPlayer.x and objPlayer.y < y {
                swingspeed = -16 exit
            }
            if x > objPlayer.x and objPlayer.y > y {
                swingspeed = 16 exit
            }
            if objPlayer.y < y + lengthdir_y(32, image_angle) swingspeed = -16
            else swingspeed = 16
        }
    }

    // Destroy with melee.
    if place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer) {
        if (scrIsSwinging(objPlayer.sprite_index) and scrCurrentWeaponExt(objPlayer.sprite_index) = 19)
            or objPlayer.sprite_index = pierretteBashShield {
                repeat(16) {
                    my_id = instance_create(x, y, objDebrisLarge)
                    my_id.speed = random(4)
                }

                if image_angle != 0 image_angle = 0
                my_id = instance_create(x + 17, y, objDestroyedDoor)
                my_id.speed = 2 + random(1)
                if objPlayer.y > y my_id.image_angle = 90 - random_range(-20, 20) else my_id.image_angle = 270 + random_range(-20, 20)
                my_id.direction = my_id.image_angle
                instance_destroy()
                sound_ps(sndBreakDoor)
                global.shake = 16
            }
    }
}

if abs(swingspeed) > 0 {
    image_angle += swingspeed
    if image_angle < -135 {
        image_angle = -135 swingspeed = 0 //abs(swingspeed)
    }
    if image_angle > 135 {
        image_angle = 135 swingspeed = 0 //-abs(swingspeed)
    }
    swingdir = sign(swingspeed)
        ////glr_mesh_set_rotation(mesh, image_angle);
    if image_angle > -6 and image_angle < 6 {
        swingspeed = 0 image_angle = 0
    }

    if swingspeed > 0.25 swingspeed -= 0.25
    else {
        if swingspeed < 0 swingspeed += 0.25
        else {
            swinger = 0 swingspeed = 0
        }
    }
}

