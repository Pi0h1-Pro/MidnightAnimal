draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 0.5)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)


if sprite_index = sprAquariumBreak {
    if image_index < 8 image_index += 0.2
}


if image_angle = 0 or image_angle = 180 {
    draw_set_blend_mode(bm_subtract)
    myy=__view_get( e__VW.YView, 0 )*0.1
    while myy>31 myy-=31
    draw_texture(sprGlassSurface,x-7,y-20,14,40,0,myy,c_white)
    draw_set_blend_mode(bm_normal)
}

if image_angle = 90 or image_angle = 270 {
    draw_set_blend_mode(bm_subtract)
    myx=__view_get( e__VW.XView, 0 )*0.1
    while myx>31 myx-=31
    draw_texture(sprGlassSurface,x-20,y-7,40,14,0,myx,c_white)
    draw_set_blend_mode(bm_normal)
}

