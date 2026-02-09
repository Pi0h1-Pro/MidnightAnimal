rotation += 4;

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
draw_rectangle_color(-50, -50, room_width + 50, room_height + 50, merge_color(c_black, c_black, 0.15 + lengthdir_x(0.15, colordir * 0.25)), merge_color(c_black, c_black, 0.15 + lengthdir_x(0.15, colordir * 0.25 + 45)), merge_color(c_fuchsia, c_maroon, 0.55 + lengthdir_x(0.24, colordir * 0.5 + 30)), merge_color(c_fuchsia, c_maroon, 0.55 + lengthdir_x(0.24, colordir * 0.5)), 0);

// Draw stars.

// i is just a temporary counter.
i = 0;

// Draw 72 stars. This can be increased or decreased.
repeat (72)
{
	// Draw a silver-white circle, for each iteration from 0 to 72.
	// starx[i ] and stary[y] are randomised variables determining the random position of the stars within the room, and are defined within the Create event.
	// starsize[i ] randomises the size of the star and is defined within the Create event.
	// starintensity[i ] determines the 'brightness' of the star by randomising the merging of silver with white. If you want all really bright stars, delete
	// random(starintensity[i ]) and change it to 1. Conversely, for dull stars, delete it and replace it with 0. Otherwise, leave it.
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


// Causes the entire room to move.
__view_set( e__VW.Angle, 0, lengthdir_y(1, dir * 1.33) );

/*
if on = 0 addy = -creditx * 0.5
else addy = 0

//Initalise colours
color1 = merge_color(c_black, merge_color(c_purple, c_fuchsia, amount * 0.5), 0.1 + random(0.15) + amount * 0.25)
color2 = merge_color(c_black, merge_color(c_maroon, c_black, amount * 0.5), 0.1 + random(0.15) + amount * 0.25)

//Draw sky base.
draw_rectangle_color(0, 0, room_width + 100, room_height + 100, color1, color2, c_black, c_black, 0)
draw_set_blend_mode(bm_add)

//Draw stars.
i = 0 repeat(72) {
    draw_circle_color(starx[i], stary[i], starsize[i], merge_color(merge_color(c_silver, c_white, random(1)), c_white, random(starintensity[i])), c_black, 0)
    i += 1
}

//Draw sky.
draw_circle_color(room_width * 0.67, room_height / 3.5 + addy * 0.5, 480, merge_color(c_black, c_fuchsia, random(amount)), c_black, 0)
draw_circle_color(room_width * 0.67, room_height / 3.5 + addy * 0.5, 32 + random(3), merge_color(c_white, c_purple, flash), c_black, 0)
draw_circle_color(room_width * 0.67, room_height / 3.5 + addy * 0.5, 28 + random(2), c_white, c_black, 0)
draw_set_blend_mode(bm_normal)
dir += 4
color1 = merge_color(c_white, c_silver, 0.5 + amount * 0.5)
color2 = merge_color(c_white, merge_color(c_fuchsia, c_purple, flash), 0.2 + amount * 0.8)

//Draw moon.
draw_sprite_general(sprMidnightMoon, 0, 0, 0, 96, 96, room_width * 0.67 - 24 - textx, room_height / 3.5 - 24 - texty + addy * 0.5, 0.5, 0.5, 0, c_fuchsia, c_fuchsia, c_silver, c_silver, 1)


color1 = merge_color(c_black, c_silver, 0.5 + random(amount * 0.5))

//Draw first skyline.
draw_background_general(bgSkyline2, 0, 0, 640, 320, texty, 1 + textx + addy * 0.75, 1, 1, 0, color1, color1, c_black, c_black, 1)
draw_set_blend_mode(bm_add)

color2 = merge_color(merge_color(c_silver, c_purple, flash), merge_color(c_black, c_white, amount), 0.5 + lengthdir_x(0.25, dir))

//Dry skyline glow.
draw_sprite_general(sprHouseLight, 1, 0, 0, 640, 320, textx, 1 + texty + addy * 0.75, 1, 1, 0, color2, color2, c_black, c_black, 1)
draw_sprite_general(sprHouseLight, 0, 0, 0, 640, 320, textx, 1 + texty + addy, 1, 1, 0, color2, color2, c_black, c_black, 1)
draw_set_blend_mode(bm_normal)

//Draw second skyline.
draw_background_general(bgSkyline1, 0, 0, 640, 320, textx, 1 + texty + addy, 1, 1, 0, color1, color1, c_black, c_black, 1)

//DRAW FLASHING RED BACKGROUND
//draw_set_blend_mode(bm_add)
//draw_surface_ext(global.surf1,1,1,1,1,0,merge_color(c_red,c_ltgray,0.5+lengthdir_x(0.5,dir)),1)
//draw_surface_ext(global.surf1,0,0,1,1,0,c_white,1)
//draw_set_blend_mode(bm_normal)

draw_set_blend_mode(bm_subtract)
my_y = random(32)
my_x = random(32)
draw_sprite_tiled(sprNoise, 0, -my_x, -my_y)

draw_set_blend_mode(bm_subtract)
draw_circle_color(view_wview[0] / 2, view_hview[0] / 2, 370 + random(34), c_black, merge_color(c_gray, merge_color(c_silver, c_white, 0.1 + random(0.4)), 0.15 + random(0.15)), 0)
draw_set_blend_mode(bm_normal)

d3d_set_projection_ortho(0, 0, view_wview[0], view_hview[0], view_angle[0])
*/

if (surface_exists(global.surf1))
{
	draw_surface_ext(global.surf1, -1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 0, -1, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 0, 1, 1, 1, 0, c_black, 1);
	draw_surface_ext(global.surf1, 0, 0, 1, 1, 0, c_white, 1);
}

// Rotate view.
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);
__view_set( e__VW.Angle, 0, lengthdir_y(1, rotation * 0.67) );

if (alpha > 0)
{
	draw_set_alpha(alpha);
	alpha -= 0.1;
	draw_set_color(c_white);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_alpha(1);
}


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
		}
		else
			next = scrGetSequence(global.sequence);
		ds_list_clear(global.bonuslist);
		
		if (next == rmUnlock)
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
	
	d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);
	draw_set_color(c_black);
	draw_set_blend_mode(bm_subtract);
	my_y = random(32);
	draw_sprite_tiled(sprScanlines, 0, 0, my_y);
	draw_set_blend_mode(bm_normal);
}

/* */
/*  */
