/// @description Draw tree with shadow, and sway.

// The shadow is drawn relative to the size of the tree, which is dictated by the scaling.
draw_sprite_ext(sprite_index,image_index,x + image_xscale * 4, y + 1 + image_yscale * 4 ,image_xscale,image_yscale,image_angle,c_black,0.5)
if on = 1 {
    i = 0
    draw_sprite_ext(sprite_index,image_index,x,y, image_xscale+lengthdir_x(0.025,sway*0.71), image_yscale+lengthdir_x(0.025,sway*0.71), image_angle+lengthdir_x(2,sway), c_white, image_alpha) 
    sway+=0.78
} else draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


