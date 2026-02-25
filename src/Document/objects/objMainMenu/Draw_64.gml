/// @description Transitions.
if fade = 0 {
    if alpha2 > 0 {
        draw_set_blend_mode(bm_add)
        if alpha1 <= 0 alpha2 -= 0.2
        alpha3 = alpha2 * 2
        if alpha3 > 1 alpha3 = 1
        draw_circle_colour(display_get_gui_width() / 2, display_get_gui_height() / 2, display_get_gui_width() * 0.74, merge_color(c_black, c_white, alpha2), merge_color(c_black, c_white, alpha3), 0)
        draw_set_blend_mode(bm_normal)
    }

    if alpha1 > 0 {
        alpha1 -= 0.2
        draw_set_blend_mode(bm_subtract)
        alpha3 = alpha1 * 2
        if alpha3 > 1 alpha3 = 1
        draw_rectangle_colour(0, 0, display_get_gui_width(), display_get_gui_height(), merge_color(c_black, c_white, alpha1), merge_color(c_black, c_white, alpha3), merge_color(c_black, c_white, alpha3), merge_color(c_black, c_white, alpha1), 0)
        draw_set_blend_mode(bm_normal)
    }
} else {
    draw_set_blend_mode(bm_add)
    if alpha2 < 1 alpha2 += 0.2
    if alpha2 >= 1 alpha2 = 1
    alpha3 = alpha2 * 2
    if alpha3 > 1 alpha3 = 1
    draw_circle_colour(display_get_gui_width() / 2, display_get_gui_height() / 2, display_get_gui_width() * 0.74, merge_color(c_black, c_white, alpha2), merge_color(c_black, c_white, alpha3), 0)
    draw_set_blend_mode(bm_normal)

    if alpha2 >= 1 {
        if alpha1 < 1 {
            alpha1 += 0.2
            if alpha1 > 1 alpha1 = 1
            if select = 0 or select = 1 or select = 2 audio_sound_gain(global.CurrentSong,1 - alpha1,0)
        } else {
            if select = 0 room = rmLevelSelect
            if select = 1 room = rmLevelSelect
            if select = 2 game_end()
            
        }
    }
    draw_set_blend_mode(bm_subtract)
    alpha3 = alpha1 * 2
    if alpha3 > 1 alpha3 = 1
    if alpha1 > 1 alpha1 = 1
    draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), merge_color(c_black, c_white, alpha1), merge_color(c_black, c_white, alpha3), merge_color(c_black, c_white, alpha3), merge_color(c_black, c_white, alpha1), 0)
    draw_set_blend_mode(bm_normal)
}

