draw_sprite_ext(sprite_index,image_index,x+5,y+6,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if on = 1 {
    i = 0
    draw_sprite_ext(sprite_index, image_index, x, y,
        image_xscale + lengthdir_x(0.025, sway * 0.71),
        image_yscale + lengthdir_x(0.025, sway * 0.71),
        image_angle + lengthdir_x(2, sway),
        merge_color(merge_color(c_teal, c_purple, 0.2),
            merge_color(c_blue, c_white, 0.5),
            0.5 + lengthdir_x(0.25, sway * 4)),
        image_alpha)
    sway += 0.78
}

