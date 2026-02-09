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
		horizon += 0.05;
}
if (float < room_width)
	float += 0.05;

// Draws the background of the room, which is the black-reddish sky.
draw_rectangle_color(-20, -20, room_width + 20, room_height + 20, merge_color(c_black, c_black, 0.15 + lengthdir_x(0.15, colordir * 0.25)), merge_color(c_black, c_black, 0.15 + lengthdir_x(0.15, colordir * 0.25 + 45)), merge_color(c_fuchsia, c_maroon, 0.55 + lengthdir_x(0.24, colordir * 0.5 + 30)), merge_color(c_fuchsia, c_maroon, 0.55 + lengthdir_x(0.24, colordir * 0.5)), 0);

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
draw_circle_color(room_width / 2, room_height / 3 + 90, 180 + lengthdir_x(40, colordir * 0.25), c_maroon, c_black, 0);

// Draws the innermost smaller ring of the sun, which just barely forms a halo around the sun, and is a pinkish tinge.
draw_circle_color(room_width / 2, room_height / 3 + 90, 80 + lengthdir_x(40, colordir * 0.25), c_fuchsia, c_black, 0);

// Draws a faded version of the sun which is darker.
// draw_sprite_general(sprCitySun, 0, 0, 0, 200, 200, room_width / 2 - 100, room_height / 3, 1, 1, 0, c_red, c_red, merge_color(c_fuchsia, c_white, objMain.sunalpha + lengthdir_x(0.5, colordir)), merge_color(c_fuchsia, c_white, objMain.sunalpha + lengthdir_x(0.5, colordir)), objMain.sunalpha)

draw_set_blend_mode(bm_normal);

// End drawing the sun.

// Draws the actual sun itself, which is maroon-red at the top, and slowly fades down to reddish-white.
draw_sprite_general(sprCitySun, 0, 0, 0, 200, 200, room_width / 2 - 100, room_height / 3 - sunalpha * 10, 1, 1, 0, merge_color(c_red, c_fuchsia, 0.2), merge_color(c_red, c_fuchsia, 0.2), merge_color(c_fuchsia, c_white, 0.5 + lengthdir_x(0.5, colordir)), merge_color(c_fuchsia, c_white, 0.5 + lengthdir_x(0.5, colordir)), sunalpha);

// This optionally adds a mountain into the scene in the background. Remove the comment to add it. The positioning of it is a bit off at the moment, but can be messed around with until satisfactory.
draw_sprite_general(sprMountain, 0, 0, 0, 480, 96, -86, 108, 1.3, 1.3, 0, c_black, c_black, merge_color(c_black, c_aqua, 0.2 + lengthdir_x(0.1, colordir * 0.1)), merge_color(c_black, c_aqua, 0.2 + lengthdir_x(0.1, colordir * 0.1 + 110)), image_alpha);

// Draws the 'city' part itself, basically by stacking a bunch of buildings (sprCityMA) on top of one another, with the image slowing fading from black to a light teal.
repeat (ceil(room_width / 160) + 1)
{
	i = 0;
	
	// Slight motion to the city.
	if (x < room_width)
		x += 0.05;
	else
		x -= room_width;
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 - 17 + float / 2, 138, 3 / 4, 3 / 4, image_angle, merge_color(c_black, c_black, 0.2 + lengthdir_x(0.2, colordir * 0.7)), merge_color(c_black, c_black, 0.2 + lengthdir_x(0.2, colordir + 110)), merge_color(c_black, c_dkgray, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_black, c_dkgray, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 - 53 - float / 3, 148, 3 / 4, 3 / 4, image_angle, merge_color(c_black, c_black, 0.2 + lengthdir_x(0.2, colordir * 0.7)), merge_color(c_black, c_black, 0.2 + lengthdir_x(0.2, colordir + 110)), merge_color(c_black, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_black, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 + float / 2, 166, 3 / 4, 3 / 4, image_angle, merge_color(c_aqua, c_teal, 0.4 + lengthdir_x(0.5, colordir * 0.7)), merge_color(c_aqua, c_teal, 0.4 + lengthdir_x(0.5, colordir + 110)), merge_color(c_dkgray, c_ltgray, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_dkgray, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 + 4 - float / 4, 181, 3 / 4, 3 / 4, image_angle, merge_color(c_dkgray, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.7)), merge_color(c_black, c_aqua, 0.5 + lengthdir_x(0.5, colordir + 110)), merge_color(c_aqua, c_dkgray, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_black, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 + 172 + float, 160, 3 / 4, 3 / 4, image_angle, merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.3, colordir * 0.7)), merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.3, colordir + 110)), merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.3, colordir * 0.8)), merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.3, colordir * 0.8 + 110)), image_alpha);
	
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 - 19 - float / 2, 173, 3 / 4, 3 / 4, image_angle, merge_color(c_black, c_aqua, 0.4 + lengthdir_x(0.4, colordir * 0.7)), merge_color(c_black, c_aqua, 0.4 + lengthdir_x(0.4, colordir + 110)), merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.3, colordir * 0.8)), merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.3, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 - 8 + float, 185, 3 / 4, 3 / 4, image_angle, merge_color(c_ltgray, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.7)), merge_color(c_dkgray, c_aqua, 0.6 + lengthdir_x(0.5, colordir + 110)), merge_color(c_aqua, c_ltgray, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_ltgray, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 + 13 - float / 3, 194, 3 / 4, 3 / 4, image_angle, merge_color(c_ltgray, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.7)), merge_color(c_dkgray, c_aqua, 0.5 + lengthdir_x(0.5, colordir + 110)), merge_color(c_aqua, c_dkgray, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_dkgray, c_aqua, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 0, 0, 0, 642, 320, i * 160 - 49 + float / 4, 209, 3 / 4, 3 / 4, image_angle, merge_color(c_dkgray, c_aqua, 0.4 + lengthdir_x(0.6, colordir * 0.7)), merge_color(c_dkgray, c_aqua, 0.6 + lengthdir_x(0.5, colordir + 110)), merge_color(c_aqua, c_ltgray, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_aqua, c_ltgray, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	draw_sprite_general(sprCityMA, 1, 0, 0, 642, 320, i * 160 + 3 - float / 3, 214, 3 / 4, 3 / 4, image_angle, merge_color(c_ltgray, c_aqua, 0.3 + lengthdir_x(0.6, colordir * 0.7)), merge_color(c_ltgray, c_aqua, 0.3 + lengthdir_x(0.5, colordir + 110)), merge_color(c_ltgray, c_ltgray, 0.5 + lengthdir_x(0.5, colordir * 0.8)), merge_color(c_aqua, c_ltgray, 0.5 + lengthdir_x(0.5, colordir * 0.8 + 110)), image_alpha);
	i += 1;
}

// Draws the front mountainy area.
color = merge_color(c_black, c_aqua, 0.15);
draw_sprite_general(sprGround, 0, 0, 0, 482, 100, 0, 160, 1, 1, 0, c_black, c_black, color, color, image_alpha);




/* dir2 += 0.25

color1 = c_white
color2 = make_color_hsv(0, 255, 15)
color3 = merge_color(c_purple, c_fuchsia, 0.5 + lengthdir_x(0.5, dir2 * 3))
    //merge_color(c_white,merge_color(merge_color(c_white,c_red,0.5+lengthdir_x(0.5,dir2*3.12)),c_white,0.125+lengthdir_y(0.125,dir2*1.73)),0.5+lengthdir_y(0.5,dir2*1.73))
d3d_set_projection_ortho(0, 0, view_wview[0], view_hview[0], 0)
draw_rectangle_color(view_xview[0], view_yview[0] + 40, view_xview[0] + view_wview[0], view_yview[0] + view_hview[0] - 40,
    c_maroon, c_fuchsia, c_purple, c_white, 0)


//SUN
draw_set_color(merge_color(color1, color3, 0.5))
draw_circle(room_width / 2, room_height * 0.6, 63, 0)
draw_circle_color(room_width / 2, room_height * 0.6, 60,
    merge_color(c_fuchsia, c_purple, 0.25 + lengthdir_x(0.25, dir2 * 2)),
    merge_color(c_white, c_purple, 0.5 + lengthdir_x(0.5, dir2 * 3)), 0)
global.color = merge_color(color3, color1, 0.5)
draw_rectangle_color(view_xview[0],
    room_height * 0.6, view_xview[0] + view_wview[0], view_yview[0] + view_hview[0] - 40,
    c_white, c_maroon, c_purple, c_fuchsia, 0)

//WAVES
with objWave {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle,
        merge_color(global.color, c_white, 0.5 + lengthdir_x(0.5, colordir)), image_alpha)
}

//SKYLINE
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(view_xview[0], view_hview[0] - 39, view_xview[0] + view_wview[0], view_yview[0] + view_hview[0] - 50,
    c_black, c_black,
    c_fuchsia, c_maroon, 0)
draw_set_blend_mode(bm_normal)
if housex > -144 housex -= 0.05
else housex += 144

i = 0 repeat(11) {
    draw_sprite_ext(sprHouseSilhouettes, 1, housex * 0.666 + i * 48, room_height * 0.6 - 5, 1, 1, 0, merge_color(c_black, global.color, 0.25), 1)
    draw_sprite_ext(sprHouseSilhouettes, 0, housex * 0.333 + i * 48, room_height * 0.6 - 3, 1, 1, 0, merge_color(c_black, global.color, 0.5), 1)
    draw_sprite_ext(sprHouseSilhouettes, 0, housex + i * 48, room_height * 0.6, 1, 1, 0, merge_color(c_black, global.color, 0.75), 1)
    i += 1
}

*/
draw_surface_ext(global.surf1, -1, 0, 1, 1, 0, c_black, 1);
draw_surface_ext(global.surf1, 1, 0, 1, 1, 0, c_black, 1);
draw_surface_ext(global.surf1, 0, -1, 1, 1, 0, c_black, 1);
draw_surface_ext(global.surf1, 0, 1, 1, 1, 0, c_black, 1);
draw_surface_ext(global.surf1, 0, 0, 1, 1, 0, c_white, 1);
if (alpha > 0)
{
	draw_set_alpha(alpha);
	alpha -= 0.1;
	draw_set_color(c_white);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_alpha(1);
}

// d3d_set_projection_ortho(0, 0, view_wview[0], view_hview[0], 0)
// view_angle[0] = lengthdir_y(0.67, rotation * .67)
if (fade == 0)
{
	if (c_amount < 180)
	{
		c_amount += 10;
		color1 = merge_color(c_white, merge_color(c_black, c_white, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_white, merge_color(c_white, c_white, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
		else
			color2 = c_black;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 10, __view_get( e__VW.YView, 0 ) - 10, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 10, color1, color2, color2, color1, 0);
		draw_set_blend_mode(bm_normal);
	}
}

if (fade == 1)
{
	if (c_amount > 0)
	{
		if ((global.myscore >= real(string_digits(parscore)) && global.masks[global.currentmask] == 0) || global.newguns > 0 || global.newmasks > 0)
			nothing = 1;
		else
			scrSongVolume(c_amount * (1 / 180));
		c_amount -= 5;
		color1 = merge_color(c_black, merge_color(c_white, c_black, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_white, merge_color(c_white, c_black, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 10, __view_get( e__VW.YView, 0 ) - 10, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 10, color2, color1, color1, color2, 0);
		draw_set_blend_mode(bm_normal);
	}
	else
	{
		global.levels[scrGetCurrentLevel()] = 1;
		
		if ((global.myscore >= real(string_digits(parscore)) && global.masks[global.currentmask] == 0 && scrGradeToNumber(lastgrade) >= 7)
			|| global.newmasks > 0)
		{
			next = rmUnlock;
		} // else {if global.newguns>0 next=rmWeaponUnlock else
		else
			next = scrGetSequence(global.sequence);
		ds_list_clear(global.bonuslist);
		
		if (next == rmUnlock) // or next=rmWeaponUnlock
			nothing = 1;
		else
		{
			scrStopSong(1);
			scrSongVolume(0);
			scrPlaySong(song);
			scrResetScore();
			scrSaveUnlocked();
		}
		room_goto(next);
	}
	
	
	//}
	
	
	d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);
	draw_set_color(c_black);
	draw_set_blend_mode(bm_subtract);
	my_y = random(32);
	draw_sprite_tiled(sprScanlines, 0, 0, my_y);
	draw_set_blend_mode(bm_subtract);
	draw_circle_color(__view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.HView, 0 ) / 2, 240 + random(24), c_black, merge_color(c_black, c_white, 0.25 + random(0.25)), 0);
	draw_set_blend_mode(bm_normal);
}

/* */
/*  */
