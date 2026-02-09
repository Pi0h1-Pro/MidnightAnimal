/// @description  Draw trail.
if (sprite_index == sprBullet || sprite_index == sprBulletRicochet)
{
	if (global.rainbow == 1)
		draw_trail_ext(1.5, random_color(), -1, slim, 0.3);
	else
		draw_trail_ext(1.5, c_white, -1, slim, 0.3);
}

/// Draw the bullet.
scrMotionBlur(speed, direction, x, y);

