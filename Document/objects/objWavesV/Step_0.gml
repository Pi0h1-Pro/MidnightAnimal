surface_set_target(surf);
texture_set_interpolation(true);
draw_surface_ext(surf, 0, 0, 0.99, 1, 0, c_white, 0.99);
i = 0;
repeat (room_width / 4)
{
	if (oceany > (limit - 30))
		scale = 1 + ((limit - 30) - oceany) * 0.02;
	else
		scale = 1;
	draw_sprite_ext(sprOceanFoamV, oceanindex[i] + index, i * 4, oceany + lengthdir_x(oceanlength[i], oceandir[i]), 1, scale, 0, merge_color(c_white, c_ltgray, (0.5 + lengthdir_x(0.5, oceandir[i] * 0.2)) * (0.9 + random(0.1))), scale);
	i += 1;
}
texture_set_interpolation(false);
surface_reset_target();

