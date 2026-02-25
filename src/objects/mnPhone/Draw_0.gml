/// @description Draw phone, and fade.
texture_set_interpolation(true)
draw_sprite_ext(sprInterfaceFade, image_index, 0, 0, 1, 1, 0, image_blend, fade_alpha)
draw_self()

// Draw text for options.
draw_set_halign(fa_left)
draw_set_font(fntPauseMenu)
draw_set_alpha(fade)

draw_set_color(c_white)
//draw_text_transformed(128, 89, text, 0.2, 0.2, -8)

i = 0
repeat(3) {

    // If selected...
    if i = select {

        // ...reset the font colour to grey.
        draw_set_color(c_dkgray)

        // Otherwise, the font colour is white by default.
    } else draw_set_color(c_white)

    // Draw the text options.
    draw_text_transformed(77 - i*1.68, 168 + i * 16, string_hash_to_newline(option[i]), 0.2, 0.2, -8)
    i += 1
}

// Draw clock hands.
//As seen on SlasherXGAMES
//http://www.youtube.com/user/SlasherXGAMES
draw_sprite_ext(spr_hourhand, 0, 112, 124, 0.2, 0.2, hourAngle + 6, c_white, fade)
draw_sprite_ext(spr_minutehand, 0, 112, 124, 0.2, 0.2, minuteAngle  + 6, c_white, fade)
draw_sprite_ext(spr_secondhand, 0, 112, 124, 0.2, 0.2, secondAngle + 6, c_white, fade)

draw_reset()
texture_set_interpolation(false)

