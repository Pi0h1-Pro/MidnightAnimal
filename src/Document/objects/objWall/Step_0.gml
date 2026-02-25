/// @description Set stages of degradation based on life.
if life >= 15 image_index = 0
if life < 15 and life >= 11 image_index = 1
if life < 11 and life >= 7 image_index = 2
if life < 7 and life >= 4 image_index = 3
if life < 4 and life >= 0 image_index = 4

// Destroy wall with melee.
if instance_exists(objPlayer) {
    if place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer) {
        if (scrIsSwinging(objPlayer.sprite_index) and scrCurrentWeaponExt(objPlayer.sprite_index) = 19)
        or objPlayer.sprite_index = pierretteBashShield {
            //if objPlayer.image_index = 5 {
                if test = 0 {
                    my_id = instance_create(x, y, objMuzzleSmoke)
                    my_id.image_angle = objPlayer.direction - 180
                    my_id.direction = objPlayer.direction  - 180
                    
                    repeat(4 + random(6)) {
                        my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objDebris)
                        my_id.direction = objPlayer.direction  - 140 - random(80)
                        my_id.speed = random(4)
                    }
                    
                    repeat(16) {
                        my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objTinyShard)
                        my_id.direction = random(360)
                        my_id.speed = 1 + random(1)
                    }
                    
                    sound_ps(choose(sndStoneBreak1, sndStoneBreak2, sndStoneBreak3))
                    life -= 10
                    alarm[0] = 60
                    test = 1
                }
            //}
        } 
    }
}

