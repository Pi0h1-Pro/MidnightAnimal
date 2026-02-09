dir += 0.65;
color2 = c_black;
color1 = merge_color(c_white, merge_color(merge_color(c_black, c_fuchsia, 0.5 + lengthdir_x(0.5, dir * 3.12)), c_purple, 0.125 + lengthdir_y(0.125, dir * 1.73)), 0.5 + lengthdir_y(0.5, dir * 1.73));
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);
draw_rectangle_color(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + 54, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 64, color1, color1, color2, color2, 0);
with (objHouse)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, image_alpha);
i = 0;
repeat (5)
{
	draw_sprite_ext(sprPalmTrees, palmindex[i], palmx[i], room_height + 65, 1, 1, 0, c_black, 1);
	palmx[i] -= 13;
	if (palmx[i] <= -60)
	{
		palmx[i] = room_width + 60;
		palmindex[i] = floor(random(6));
	}
	i += 1;
}

// DRAW STARS
i = 0;
repeat (72)
{
	draw_circle_color(starx[i], stary[i], starsize[i], merge_color(merge_color(c_silver, c_white, random(1)), c_white, random(starintensity[i])), c_black, 0);
	i += 1;
}

d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), __view_get( e__VW.Angle, 0 ));
if (surface_exists(global.surf1))
{
	draw_surface_ext(global.surf1, 0, -1, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, -1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 0, 1, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 0, 0, 1, 1, 0, c_white, 1);
}

__view_set( e__VW.Angle, 0, lengthdir_y(3, dir * 3.33) );
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);

draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 55, 0);
draw_rectangle(0, room_height, room_width, room_height - 65, 0);
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);
draw_set_font(fntDate);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text(room_width / 2, room_height - 58 - 1, string_hash_to_newline(hint[myhint]));
draw_text(room_width / 2, room_height - 58 + 1, string_hash_to_newline(hint[myhint]));
draw_text(room_width / 2 - 1, room_height - 58, string_hash_to_newline(hint[myhint]));
draw_text(room_width / 2 + 1, room_height - 58, string_hash_to_newline(hint[myhint]));
draw_set_color(c_white);
draw_text(room_width / 2, room_height - 58, string_hash_to_newline(hint[myhint]));

if (fade == 0)
{
	if (c_amount < 180)
	{
		c_amount += 10;
		color1 = merge_color(c_black, merge_color(c_purple, c_white, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 10, __view_get( e__VW.YView, 0 ) - 10, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 10, color1, color2, color2, color1, 0);
		draw_set_blend_mode(bm_normal);
	}
}

if (fade == 1)
{
	if (c_amount > 0)
	{
		c_amount -= 5;
		color1 = merge_color(c_black, merge_color(c_purple, c_white, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 10, __view_get( e__VW.YView, 0 ) - 10, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 10, color2, color1, color1, color2, 0);
		draw_set_blend_mode(bm_normal);
	}
	else
	{
		room_goto(global.level);
	}
}


draw_set_blend_mode(bm_subtract);
my_y = random(32);
draw_sprite_tiled(sprScanlines, 0, 0, my_y);
draw_set_blend_mode(bm_subtract);
draw_circle_color(__view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.HView, 0 ) / 2, 240 + random(24), c_black, merge_color(c_navy, c_purple, 0.25 + random(0.25)), 0);
draw_set_blend_mode(bm_normal);

