image_angle += speed * 0.5
if !scrMovingPlayerExists() exit
if empty = true exit
if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 {
    if keyboard_check_pressed(global.interactkey) {
        instance_destroy()
        with objPlayer {
            global.current = sprite_index
            switch (global.character) {
                case 0:
                    sound_ps(sndDrinkSoda)
                    sprite_index = sprPDrinkSoda
                    image_speed = 0
                    image_index = 0
            }
        }
    }
}

