/// @description  Draw slice.
draw_set_blend_mode(bm_subtract)
draw_self()
draw_sprite_ext(sprPsychicSlashShadow, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_set_blend_mode(bm_normal)

