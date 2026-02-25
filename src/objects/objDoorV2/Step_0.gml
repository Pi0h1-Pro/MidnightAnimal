/// @description  Open/close door.
if solid = 1 nothing = 1
else {
    global.my_id = id
    with objEnemy {
        if place_meeting(x, y, global.my_id) {
            global.my_id.target = id
            with global.my_id {
                swinger = 2
                if abs(swingspeed) < 2 sound_ps(choose(sndDoorOpen1, sndDoorOpen2))
                if y > target.y and target.x < x {
                    swingspeed = 8 exit
                }
                if y > target.y and target.x > x {
                    swingspeed = -8 exit
                }
                if target.x < x + lengthdir_x(32, image_angle + 270) swingspeed = 8
                else swingspeed = -8
            }
        }
    }
}


if abs(swingspeed) > 0 {
    image_angle += swingspeed
    if place_meeting(x, y, objFurniture) {
        image_angle -= swingspeed
        swingspeed *= -0.5
    }
    if image_angle < -135 {
        image_angle = -135 swingspeed = abs(swingspeed)
    }
    if image_angle > 135 {
        image_angle = 135 swingspeed = -abs(swingspeed)
    }
    swingdir = sign(swingspeed)
    //glr_mesh_set_rotation(// mesh, image_angle);
    if abs(swingspeed) < 3.5 {
        if image_angle > -6 and image_angle < 6 {
            swingspeed = 0 image_angle = 0
        }
    }

    if swingspeed > 0.25 swingspeed -= 0.25
    else {
        if swingspeed < 0 swingspeed += 0.25
        else {
            swinger = 0 swingspeed = 0
        }
    }
}

