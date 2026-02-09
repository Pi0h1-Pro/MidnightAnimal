if (on == 1)
{
	if (amount < 1)
		amount += 0.02;
	if (wait > 0)
		wait -= 1;
	else
		on = 2;
}

if (on == 2)
{
	if (amount > 0)
		amount -= 0.001;
}

draw_set_blend_mode(bm_subtract);
draw_sprite_ext(sprExplosionSmoke, 0, x, y, image_xscale, image_yscale, image_angle, merge_color(merge_color(c_black, c_gray, amount), merge_color(c_black, c_white, 0.5 + amount * 0.5), 0.5 + lengthdir_x(0.5, dir)), 1);
draw_sprite_ext(sprExplosionSmoke, 1, x, y, image_xscale, image_yscale, image_angle, merge_color(merge_color(c_black, c_gray, amount), merge_color(c_black, c_white, 0.5 + amount * 0.5), 0.5 + lengthdir_x(0.5, dir * 0.6 + 90)), 1);
draw_sprite_ext(sprExplosionSmoke, 2, x, y, image_xscale, image_yscale, image_angle, merge_color(merge_color(c_black, c_gray, amount), merge_color(c_black, c_white, 0.5 + amount * 0.5), 0.5 + lengthdir_x(0.5, dir * 1.2 + 180)), 1);
draw_sprite_ext(sprExplosionSmoke, 3, x, y, image_xscale, image_yscale, image_angle, merge_color(merge_color(c_black, c_gray, amount), merge_color(c_black, c_white, 0.5 + amount * 0.5), 0.5 + lengthdir_x(0.5, dir * 0.8 + 270)), 1);
draw_set_blend_mode(bm_normal);
dir += 2;

if (on > 0 && index < 17)
{
	if (index >= 2 && index <= 17)
		draw_sprite_ext(sprite_index, index - 2, x, y, image_xscale, image_yscale, image_angle, merge_color(c_orange, c_maroon, amount), 1);
	if (index >= 1 && index <= 16)
		draw_sprite_ext(sprite_index, index - 1, x, y, image_xscale, image_yscale, image_angle, merge_color(c_yellow, c_orange, amount), 1);
	if (index <= 15)
		draw_sprite_ext(sprite_index, index, x, y, image_xscale, image_yscale, image_angle, merge_color(c_white, c_yellow, amount), 1);
	index += 0.33;
}

