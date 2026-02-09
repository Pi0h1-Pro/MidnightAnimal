angle = direction
if sprite_index = sprERadioWalk {
    scrPatrol()
    if point_distance(x, y, objPlayer.x, objPlayer.y) > 120 or scrCheckBack(point_direction(objPlayer.x, objPlayer.y, x, y), direction) test = 1
    else {
        test = scrLook(objPlayer.x, objPlayer.y, 4)
    }
    if test = 0 or test = 2 {
        speed = 0

        if sprite_index = sprERadioWalk {
            sprite_index = sprERadioTalk
            image_index = 0
            sound_play(sndRadioAlert)
            //image_speed = 0.25
            legindex = 0
            objPlayer.active = 0
            if seen = 0 {
                with objEnemy {
                    if alert = 0 alert = 1 
                }
                sound_play(sndRadioAlert)
                seen = 1
            }
        }
    }
} else {
    direction = scrRotate(direction, point_direction(x, y, objPlayer.x, objPlayer.y), 10)
    if image_index < 6 image_index += 0.15
}


if reload > 0 reload -= 1
else {
    reload = 5
    seen = scrLook(objPlayer.x, objPlayer.y, 6)
    if seen == 0 or seen == 2 {
        speed = 0
        path_end()
        image_angle = point_direction(x, y, objPlayer.x, objPlayer.y)
        sprite_index = sprERadioTalk
        image_speed = 0.25
        legindex = 0
        bangs = 0
        exit
    }
}
