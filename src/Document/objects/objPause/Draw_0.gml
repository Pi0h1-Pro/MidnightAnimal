/// @description  Draw pause memu.
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0)

// Draw screen.
//draw_sprite(PauseSprite,0,0,0);
draw_sprite_stretched(PauseSprite,0,0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));

// Draw background with tint.
draw_set_alpha(alpha)
draw_rectangle_color(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), global.rubedo, global.rubedo, global.rubedo, global.rubedo, 0)
draw_set_alpha(1)

if cut = 0 {
    if alpha < 0.74 alpha += 0.05
} else {
    if alpha > 0 alpha -= 0.05
}

// Draw first character.
if state = 0 {
    instance_create(__view_get( e__VW.WView, 0 ) / 2, 0, objPauseMenuSplatter)
    instance_create(0, 0, objPauseMenuSplatterShot)
    with objPauseMenuSplatterShot draw_self()
}

// Draw characters.
if state = 1 {
    with objPauseMenuSplatterShot draw_self()
    with objPauseMenuSplatter draw_self()
    
    // Draw character.
    draw_sprite_ext(sprite_index, 1, character, 0, 0.74, 0.74, 0, c_white, 1)

    if cut = 0 {
        if character > 0 character -= 40
    }
}

// Draw options.
if state = 2 {

    with objPauseMenuSplatterShot draw_self()
    with objPauseMenuSplatter draw_self()
    
    // Draw text for options.
    draw_set_halign(fa_left)
    draw_set_font(fntPauseMenu)

    i = 0
    repeat(3) {

        // If selected...
        if i = select {

            // ...draw a white bounding box around it...
            draw_set_color(c_white)
            draw_rectangle(optionsx, 124 + 28 + i * 16, 396, 124 + 42 + i * 16, 0)

            // ...and reset the font colour to black.
            draw_set_color(c_black)

            // Otherwise, the font colour is white by default.
        } else draw_set_color(c_white)
        
        // Draw the text options.
        draw_text_transformed(optionsx + 4, 123 + 36 + i * 16, string_hash_to_newline(option[i]), 0.2, 0.2, 0)
        i += 1
        
        if cut = 0 {
            if character > 0 character -= 20
            if optionsx > 286 optionsx -= 4
        }
    }


    x = startx

    // Redraw UI.

    // 'WAIT A SECOND':
    draw_sprite_ext(sprite_index, 0, 0, texty, 0.74, 0.74, 0, c_white, 1) // 0.251, 0.24

    // Draw character.
    draw_sprite_ext(sprite_index, 1, character, 0, 0.74, 0.74, 0, c_white, 1) // 0.251 0.251

    if cut = 0 {
        if texty > 0 texty -= 40
    } 
}

//draw_sprite_ext(sprHUDBars, 0, 0, -5, 0.8, 0.7, 0, c_black, 1)

