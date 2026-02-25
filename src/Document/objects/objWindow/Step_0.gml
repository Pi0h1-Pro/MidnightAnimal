/// @description Break window with melee.

// If the window is already broken, don't run any more code.
if image_index = 1 exit

// Check if the player exists.
if instance_exists(objPlayer) {
    
    // Check if the player is attacking...
    if (scrIsSwinging(objPlayer.sprite_index) or objPlayer.sprite_index = sprPAttackPunch or objPlayer.sprite_index = sprPAttackUnarmed2 or objPlayer.sprite_index = sprPAttackUnarmed1 or objPlayer.sprite_index = sprPAttackDrill) 
    
    // ...and check if the player is a certain distance away from the window.
    and place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer) {
    
        // If the LSD filter is on, play a distorted glass shattering sound; otherwise, play a normal one.
        sound_ps(choose(sndGlass1, sndGlass2))
        
        // Change the image index of the window to its broken counterpart.
        image_index = 1
        
        // Handle vertical windows.
        if object_index = objGlassPanelV or object_index = objWindowV {
        
            // Orient the shards to the player's y-coordinate and direction.
            shoty = objPlayer.y
            shotdir = objPlayer.dir
            i = 0
            
            // Create shards of glass.          
            repeat(64) {
                my_id = instance_create(x + 4, y + i, objShard)
                my_id.shoty = objPlayer.y
                my_id.shotdir = objPlayer.dir
                if frac(i) > 0 my_id.hspeed = sign(lengthdir_x(1, shotdir)) * (1 + random(3))
                else my_id.hspeed = sign(lengthdir_x(1, shotdir)) * (0.5 + random(1)) + lengthdir_y(1, -45 + i * 0.71) * sign(lengthdir_x(1, shotdir))
                my_id.image_index = ceil(random(8)) * random(1)
                my_id.i = i
                with my_id {
                    dist = point_distance(x + 4, y + i, x + 4, shoty) * 0.5
                    if dist < 1 dist = 1
                    motion_add(shotdir, 2 / dist)
                }
                i += 0.5
            }
        }
        
        // Handle horizontal windows.
        if object_index = objGlassPanelH or object_index = objWindowH {
            
            // Orient the shards to the player's x-coordinate and direction.
            shotx = objPlayer.x
            shotdir = objPlayer.dir
            i = 0
            
            // Create shards of glass.
            repeat(64) {
                my_id = instance_create(x + i, y + 4, objShard)
                my_id.shotx = objPlayer.x
                my_id.shotdir = objPlayer.dir
                if frac(i) > 0 my_id.vspeed = sign(lengthdir_y(1, shotdir)) * (1 + random(3))
                else my_id.vspeed = sign(lengthdir_y(1, shotdir)) * (0.5 + random(1)) + lengthdir_y(1, 45 + i * 0.71) * sign(lengthdir_y(1, shotdir))
                my_id.image_index = ceil(random(8)) * random(1)
                my_id.i = i
                with my_id {
                    dist = point_distance(x + i, y + 4, shotx, y + 4) * 0.5
                    if dist < 1 dist = 1
                    motion_add(shotdir, 2 / dist)
                }
            
                i += 0.5
            }
        }

    }
}


