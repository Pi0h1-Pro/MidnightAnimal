/// @description Draw explosion.
dir += 2
/*
draw_set_blend_mode(bm_subtract)
draw_sprite_ext(sprExplosionBottom,34,x,y,0.5,0.5,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.5,dir)),image_alpha)
draw_sprite_ext(sprExplosionBottom,33,x,y,0.5,0.5,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.5,dir+120)),image_alpha)
draw_sprite_ext(sprExplosionBottom,32,x,y,0.5,0.5,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.5,dir+240)),image_alpha)
draw_set_blend_mode(bm_normal)

draw_set_blend_mode(bm_subtract)
draw_sprite_ext(sprExplosionMid,20,x,y,0.5,0.5,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.5,dir)),image_alpha)
draw_sprite_ext(sprExplosionMid,18,x,y,0.5,0.5,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.5,dir+120)),image_alpha)
draw_sprite_ext(sprExplosionMid,16,x,y,0.5,0.5,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.5,dir+240)),image_alpha)
draw_set_blend_mode(bm_normal)
*/
if subindex < 37 {    
    draw_set_blend_mode(bm_subtract)
    if subindex < 37 draw_sprite_ext(sprExplosionBottom, subindex, x, y, 0.5, 0.5, image_angle, merge_color(c_dkgray,c_ltgray,0.3+lengthdir_x(0.5,dir+120)), alpha)
    draw_set_blend_mode(bm_normal)
    subindex += 0.5
}

if subindex < 21 {
    draw_set_blend_mode(bm_normal)
    if subindex < 21 draw_sprite_ext(sprExplosionMid, subindex, x, y, 0.5, 0.5, image_angle, image_blend, alpha)
    subindex += 0.5
}

if index < 28 {
    draw_set_blend_mode(bm_subtract)
    if index < 28 draw_sprite_ext(sprite_index, index, x, y, 1.4, 1.4, image_angle, image_blend, alpha)
    draw_set_blend_mode(bm_normal)
    index += 0.5
}



/* */
/*  */
