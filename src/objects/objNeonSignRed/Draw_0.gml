draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprSignGlowRedV,image_index,x,y,image_xscale,image_yscale,image_angle,merge_color(c_ltgray,c_white,random(1)),image_alpha)
draw_set_blend_mode(bm_normal)

draw_set_color(c_red)
draw_lens_flare(x,y,255,2,2,3,4,0.7)

