if !scrMovingPlayerExists() exit

if sprite_index = sprCrow or sprite_index = sprCrowIdle2 {
    if point_distance(x, y, objPlayer.x, objPlayer.y) < 48 {
        direction = image_angle
        sprite_index = sprCrowFly
        speed = 1.5
        gravity = 0.1
        gravity_direction = direction - 10 + random(20)
        sound_ps(sndBirdsFly)
    }
}

if sprite_index = sprCrowFly {
    if speed > 4.5 speed = 4.5
    image_index += speed * 0.075
}


