if scrMovingPlayerExists() {
    if scrIsSwinging(objPlayer.sprite_index) {
        if punch = 0 {
            if place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer) {
                image_speed = 0.5
                image_angle = point_direction(objPlayer.x, objPlayer.y, x, y)
                if image_index > 2 image_index = 2
                sound_ps(sndBoxingBag)
                instance_create(x, y, objHitImpact)
                instance_create(x, y, objMuzzleSmoke)
                create_points("GOOD HIT +10")
                global.myscore += 10
                global.combo += 1
                global.combotime = 240
                punch = 1
            }
        }
    } else punch = 0
}


