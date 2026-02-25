/// @description Draw the window.
scrDrawWallV()

// Draw shine on the window surface if not broken.
if image_index = 0 {
    draw_set_blend_mode(bm_subtract)
    myy = __view_get( e__VW.YView, 0 ) * 0.1
    while myy > 31 myy -= 31
    draw_texture(sprGlassSurface, x + 3, y + 1, 2, 30, 0, myy, c_white)
    draw_set_blend_mode(bm_normal)
}


