dir += 0.25;

if (sunalpha >= 1)
{
	if (sunshine < 1)
		sunshine += 0.05;
}
if (sunalpha < 1)
	sunalpha += 0.01;

if (float >= room_width)
{
	if (horizon < 1)
		horizon += 0.01;
}
if (float < room_width)
	float += 0.03;

// Draws the background of the room, which is the black-reddish sky.
draw_rectangle_color(-20, -20, room_width + 20, room_height + 20, merge_color(c_black, c_navy, 0.15 + lengthdir_x(0.15, dir * 0.25)), merge_color(c_black, c_navy, 0.15 + lengthdir_x(0.15, dir * 0.25 + 45)), merge_color(c_purple, c_orange, 0.65 + lengthdir_x(0.24, dir * 0.6 + 30)), merge_color(c_purple, c_orange, 0.65 + lengthdir_x(0.24, dir * 0.6)), 0);

// Draw stars.

// i is just a temporary counter.
i = 0;

// Draw 72 stars. This can be increased or decreased.
repeat (72)
{
	// Draw a silver-white circle, for each iteration from 0 to 72.
	// starx[i] and stary[y] are randomised variables determining the random position of the stars within the room, and are defined within the Create event.
	// starsize[i] randomises the size of the star and is defined within the Create event.
	// starintensity[i] determines the 'brightness' of the star by randomising the merging of silver with white. If you want all really bright stars, delete
	// random(starintensity[i]) and change it to 1. Conversely, for dull stars, delete it and replace it with 0. Otherwise, leave it.
	draw_circle_color(starx[i], stary[i], starsize[i], merge_color(merge_color(c_silver, c_white, random(1)), c_white, random(starintensity[i])), c_black, 0);
	i += 1;
}

// Draw flashing stars.
with (objStar)
{
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, merge_color(c_white, merge_color(c_ltgray, c_silver, random(1)), random(1)), 1);
}

// Begin drawing the sun.
draw_set_blend_mode(bm_add);

// Draws the largest outer ring of the sun, which is a reddish tinge.
draw_circle_color(room_width / 2, room_height / 3 + 90, 180 + lengthdir_x(40, dir * 0.25), c_orange, c_black, 0);

// Draws the innermost smaller ring of the sun, which just barely forms a halo around the sun, and is a pinkish tinge.
draw_circle_color(room_width / 2, room_height / 3 + 90, 80 + lengthdir_x(40, dir * 0.25), c_yellow, c_black, 0);

// Draws a faded version of the sun which is darker.
// draw_sprite_general(sprCitySun, 0, 0, 0, 200, 200, room_width / 2 - 100, room_height / 3, 1, 1, 0, c_red, c_red, merge_color(c_yellow, c_white, objMain.sunalpha + lengthdir_x(0.5, dir)), merge_color(c_yellow, c_white, objMain.sunalpha + lengthdir_x(0.5, dir)), objMain.sunalpha)

// Draw horizon strip.
color = merge_color(merge_color(c_orange, c_red, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_fuchsia, c_yellow, 0.5 + lengthdir_x(0.5, dir)), i * (1 / 138));
draw_rectangle_color(0, room_height / 2 + 4, room_width, room_height / 2 + 33, c_black, c_black, color, color, 0);

draw_set_blend_mode(bm_normal);

// End drawing the sun.

// Draws the actual sun itself, which is maroon-red at the top, and slowly fades down to reddish-white.
draw_sprite_general(sprCitySun, 0, 0, 0, 200, 200, room_width / 2 - 100, room_height / 3 - sunalpha * 10, 1, 1, 0, merge_color(c_orange, c_yellow, 0.2), merge_color(c_orange, c_yellow, 0.2), merge_color(c_yellow, c_white, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_yellow, c_white, 0.5 + lengthdir_x(0.5, dir)), sunalpha);

// This optionally adds a mountain into the scene in the background. Remove the comment to add it. The positioning of it is a bit off at the moment, but can be messed around with until satisfactory.
draw_sprite_general(sprMountain, 0, 0, 0, 480, 96, -86, 108, 1.3, 1.3, 0, c_black, c_black, merge_color(c_black, c_aqua, 0.2 + lengthdir_x(0.1, dir * 0.1)), merge_color(c_black, c_aqua, 0.2 + lengthdir_x(0.1, dir * 0.1 + 110)), image_alpha);

draw_sprite_general(sprCellTower, 0, 0, 0, 80, 160, 288, 0, 1.1, 1.1, 0, c_black, c_black, merge_color(c_black, c_dkgray, 0.2 + lengthdir_x(0.1, dir * 0.1)), merge_color(c_black, c_dkgray, 0.2 + lengthdir_x(0.1, dir * 0.1 + 110)), image_alpha);

draw_sprite_general(sprTreeLine3, 0, 0, 0, 1494, 302, -100 - float / 2, 60, 0.5, 0.5, 0, c_black, c_black, merge_color(c_black, c_aqua, 0.1), merge_color(c_black, c_aqua, 0.1), image_alpha);
draw_sprite_general(sprTreeLine1, 0, 0, 0, 900, 382, -50 + float / 5, 80, 0.55, 0.55, 0, c_black, c_black, merge_color(c_black, c_aqua, 0.075), merge_color(c_black, c_aqua, 0.075), image_alpha);
draw_sprite_general(sprTreeLine2, 0, 0, 0, 987, 246, -10 - float / 6, 120, 0.5, 0.5, 0, c_dkgray, c_dkgray, c_aqua, c_aqua, image_alpha);

// Draws the front mountainy area.
color = merge_color(c_black, c_aqua, 0.135);
draw_sprite_general(sprGround, 0, 0, 0, 482, 100, 0, 160, 1, 1, 0, c_black, c_black, color, color, image_alpha);


// Draw dark lines for hint box.
/* draw_set_blend_mode(bm_subtract)
i = 0
repeat(6) {
    draw_line_width_color(0, 10 + i * 4, room_width, 8 + i * 4, 2, c_black, merge_color(c_dkgray, c_black, 0.5 + lengthdir_x(0.5, amount)))
    i += 1
}
i = 0
repeat(10) {
    draw_line_width_color(0, room_height * 0.7 - 1 + i * 4, room_width, room_height * 0.7 - 1 + i * 4, 2, c_black, merge_color(c_dkgray, c_black, 0.5 + lengthdir_x(0.5, amount)))
    i += 1
}
if fade = 0 {
    if amount < 180 amount += 10
}
if fade = 1 {
    if amount > 0 amount -= 10
}
draw_set_blend_mode(bm_normal)
*/
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), __view_get( e__VW.Angle, 0 ));
if (surface_exists(global.surf1))
{
	draw_surface_ext(global.surf1, 0, -1, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, -1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 0, 1, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 0, 0, 1, 1, 0, c_white, 1);
}

// The entire scene shifts back and forth.
__view_set( e__VW.Angle, 0, lengthdir_y(0.4, dir * 0.33) );
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);

// Draw text.
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
		color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
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
		color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
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
draw_set_blend_mode(bm_normal);

/* */
/*  */
