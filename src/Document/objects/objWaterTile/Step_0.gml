if reset = 1 surface_free(surf)

if !surface_exists(surf) surf = surface_create(64, 64)
if image_angle = 0 global.myx = x global.myy = y

surface_set_target(surf)
texture_set_interpolation(true)
draw_surface_ext(surf, -0.5 + random(1), -0.5 + random(1), 1, 1, 0, c_red, 0.999)
with objSplatter draw_sprite_ext(sprite_index, image_index, x - global.myx, y - global.myy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
with objSplat draw_sprite_ext(sprite_index, image_index, x - global.myx, y - global.myy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
with objSmudge draw_sprite_ext(sprite_index, image_index, x - global.myx, y - global.myy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
with objBigBlood draw_sprite_ext(sprite_index, image_index, x - global.myx, y - global.myy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
with objTinyBlood draw_sprite_ext(sprite_index, image_index, x - global.myx, y - global.myy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
texture_set_interpolation(false)
surface_reset_target()

