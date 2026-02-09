/// @description  Draw door.
if (!scrMovingPlayerExists())
	exit;

if (point_distance(x, y, objPlayer.x, objPlayer.y) < 32)
{
	draw_sprite_ext(sprite_index, 0, x + 1, y + 1, image_xscale, image_yscale, image_angle, c_black, 0.3);
	draw_sprite_ext(sprite_index, 1, x + 1, y + 1, image_xscale, image_yscale, image_angle, image_blend, 1);
}
else
{
	draw_sprite_ext(sprite_index, 0, x + 1, y + 1, image_xscale, image_yscale, image_angle, c_black, 0.3);
	draw_sprite_ext(sprite_index, 0, x + 1, y + 1, image_xscale, image_yscale, image_angle, image_blend, 1);
}

