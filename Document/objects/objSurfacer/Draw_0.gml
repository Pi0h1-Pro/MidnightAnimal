if (surface_exists(surf))
	draw_surface_ext(surf, 0, 0, 0.5, 0.5, 0, c_white, 1);
else
	surf = surface_create(room_width * 2, room_height * 2);
with (objBloodPool)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

