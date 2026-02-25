
if !scrMovingPlayerExists() exit
index = image_index
mask_index = sprite_index
image_index = 0
 
// Open trunk if enemies exist.
if trunk {

    // If the player is a certain distance away...
    if instance_exists(objPlayer){
        if point_distance(objPlayer.x, objPlayer.y, x + lengthdir_x(48, image_angle + 180), y + lengthdir_y(48, image_angle + 180)) < 32 {
        
            // Open trunk.
            if trunkindex < 6 {
                if trunkindex = 0 sound_ps(sndTrunkOpen)
                trunkindex += 0.5
            }
        } else {
        
            // Close trunk.
            if trunkindex > 0.25 trunkindex -= 0.25 else {
                if trunkindex > 0 sound_ps(sndTrunkClose) trunkindex = 0
            }
        }
    }
}

if on = 1 {
    if done = 0 {
        if doorindex < 6 doorindex += 0.2 else {
            my_id = instance_create(x, y, objPlayer)
            my_id.direction = image_angle + 90
            global.active = 0
            
            with objPlayerDead instance_destroy()
            wait = 18
            done = 1
        }
    }
}

if wait > 0 {
    wait -= 1
    my_id.direction = image_angle + 90
    my_id.x += lengthdir_x(2, image_angle + 90)
    my_id.y += lengthdir_y(2, image_angle + 90)
    my_id.legindex += 0.35
    my_id.image_index += 0.2
} else {
    if done = 1 {
        my_id.active = 1 done = 2 scrSaveFloor() on = 2
    }
}

if done = 2 and global.done = 0 {
    if doorindex > 0.2 doorindex -= 0.2
    else {
        if doorindex > 0 sound_ps(sndCarClose) doorindex = 0
    }
}

if scrMovingPlayerExists() and global.done = 1 {
    if point_distance(x + lengthdir_x(6, image_angle), y, objPlayer.x, objPlayer.y) < 64 and objPlayer.visible = 1 {
        if enter = 0 {
            if doorindex < 6 {
                if doorindex = 0 sound_ps(sndCarOpen)
                doorindex += 0.5
            }
        } else {
            if doorindex > 0.25 doorindex -= 0.25
            else {
                if doorindex > 0 sound_ps(sndCarClose) 
                doorindex = 0
            }
        }
    } else {
        if doorindex > 0.25 doorindex -= 0.25 else {
            if doorindex > 0 sound_ps(sndCarClose) doorindex = 0
        }
    }
    
    if place_meeting(x, y, objPlayer) or enter = 1 {
        enter = 1
        //solid = 0
        depth = -5
        global.active = 0
        if point_distance(x, y, objPlayer.x, objPlayer.y) > 12 {
            objPlayer.x += lengthdir_x(2, point_direction(objPlayer.x, objPlayer.y, x, y))
            objPlayer.y += lengthdir_y(2, point_direction(objPlayer.x, objPlayer.y, x, y))
        } else {
            with objPlayer visible = 0
            if sprite_index = sprJohnCar {
                if image_index > 0.25 image_index -= 0.25
                else {
                    sound_ps(sndCarEngine) 
                    sprite_index = sprJohnCarStart 
                    image_index = 0
                }
            }
            
            if sprite_index = sprJohnCarStart {
                if image_index < 5 image_index += 0.25
                if start > 0 start -= 1
                else {
                    room_persistent = 0
                    objEffector.fade = 1
                    room = rmLevelSelect
					with (WSOUND) {
						instance_destroy();
					}
                }
            }

        }
        mask_index = sprJohnCarMask
    } else image_index = index
    mask_index = sprJohnCarMask
    
    if global.done = 0 {
        mask_index = sprite_index exit
    }
    if instance_exists(objPlayer) and global.done = 0 {
        mask_index = sprite_index exit
    }
}

mask_index = sprJohnCarMask

