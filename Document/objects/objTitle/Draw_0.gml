if (coldir < 180)
	coldir += 2;
if (coldir < 90)
	coldir += 3;
if (coldir <= 90)
	color = merge_color(c_black, merge_color(c_white, c_fuchsia, abs(lengthdir_y(1, coldir))), abs(lengthdir_y(1, coldir)));
if (coldir > 90)
	color = merge_color(c_fuchsia, c_aqua, abs(lengthdir_x(1, coldir)));
dir += 0.25;

// Draws the background of the room, which is the black-reddish sky.
purple = merge_color(c_maroon, c_black, 0.35 + lengthdir_x(0.25, dir * 0.25));
draw_rectangle_color(-20, -20, room_width + 20, room_height + 20, merge_color(purple, c_purple, 0.15 + lengthdir_x(0.15, dir * 0.25)), merge_color(purple, c_purple, 0.15 + lengthdir_x(0.15, dir * 0.25 + 45)), merge_color(c_purple, c_fuchsia, 0.65 + lengthdir_x(0.24, dir * 0.6 + 30)), merge_color(c_purple, c_fuchsia, 0.65 + lengthdir_x(0.24, dir * 0.6)), 0);

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

// Draw glow of sun.
draw_set_blend_mode(bm_add);
draw_circle_color(room_width / 2, room_height / 2 + 30, 180 - lengthdir_x(3, dir), orange, c_black, 0);

// Draws the innermost smaller ring of the sun, which just barely forms a halo around the sun, and is a pinkish tinge.
draw_circle_color(room_width / 2, room_height / 3 + 14, 80 + lengthdir_x(10, dir * 0.25), c_fuchsia, c_black, 0);

// Draw horizon strip.
color = merge_color(merge_color(c_purple, c_orange, 0.3), merge_color(c_maroon, c_red, 0.3), i * (1 / 138));
draw_rectangle_color(0, room_height / 2 - 22, room_width, room_height / 2, c_black, c_black, color, color, 0);

// Draw sun.
draw_sprite_general(sprBigMoon, 0, 0, 0, 276, 212, x - 138 / 3, y - 13, 1 / 3, 1 / 3, 0, merge_color(c_orange, c_fuchsia, 0.2), merge_color(c_orange, c_fuchsia, 0.2), merge_color(orange, c_orange, 0.5 + lengthdir_x(0.5, dir)), merge_color(orange, c_orange, 0.5 + lengthdir_x(0.5, dir)), 1);

draw_set_blend_mode(bm_normal);

// Draw title.
// draw_sprite_general(sprTitle, 0, 0, 0, 234, 50, 240, 108, 1, 1, image_angle, merge_color(c_purple, c_fuchsia, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_purple, c_fuchsia, 0.5 + lengthdir_x(0.5, dir)), merge_color(orange, c_orange, 0.5 + lengthdir_x(0.5, dir)), merge_color(orange, c_orange, 0.5 + lengthdir_x(0.5, dir)), 1)
// draw_sprite_general(sprTitle, 1, 0, 0, 234, 50, 240, 108, 1, 1, image_angle, merge_color(c_aqua, c_aqua, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_aqua, c_aqua, 0.5 + lengthdir_x(0.5, dir)), merge_color(orange, c_orange, 0.5 + lengthdir_x(0.5, dir)), merge_color(orange, c_orange, 0.5 + lengthdir_x(0.5, dir)), 1)

draw_sprite_ext(sprTitle, 0, 240, 108, 1, 1, image_angle, merge_color(c_fuchsia, orange, 0.5 + lengthdir_x(0.5, dir)), 1);
draw_sprite_ext(sprTitle, 1, 240, 108, 1, 1, image_angle, merge_color(c_aqua, orange, 0.5 + lengthdir_x(0.5, dir)), 1);


// Small houses on the horizon.
with (objSmallHouse)
{
	dir = 0;
	color = merge_color(c_white, c_fuchsia, 0.75 + lengthdir_x(0.25, x * 4 + objTitle.dir));
	color1 = merge_color(c_yellow, c_orange, 0.5 + lengthdir_x(0.5, dir));
	color2 = merge_color(merge_color(c_white, c_fuchsia, 0.5), c_white, 0.5 + lengthdir_x(0.5, dir));
	draw_sprite_general(sprite_index, image_index, 0, 0, 21, 53, x - 5.5, y - 5.5 + lengthdir_x(0.6, x + objTitle.dir * 2), 0.5, 0.5, 0, color, color, color2, color2, .4);
}

// Draw sea.
draw_rectangle_color(-100, room_height / 2, room_width + 100, room_height + 100, merge_color(c_orange, orange, -lengthdir_x(0.5, dir) + 0.5), merge_color(c_orange, orange, -lengthdir_x(0.5, dir) + 0.5), merge_color(c_fuchsia, c_fuchsia, -lengthdir_x(0.5, dir) + 0.5), merge_color(c_fuchsia, c_fuchsia, -lengthdir_x(0.5, dir) + 0.5), 0);
i = 0;
if (sun > 0)
	sun -= 1;
else
	sun = 4;

// Draw sun's reflection on water.
draw_set_blend_mode(bm_add);
repeat (138)
{
	addx = lengthdir_x(i * 0.08, dir + i * 3);
	if (sun == 0)
		hue[i] = -0.5 + random(1) - random(i * 0.01) + random(i * 0.02);
	color2 = merge_color(merge_color(c_white, c_white, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_red, c_red, 0.5 + lengthdir_x(0.5, dir)), i * (1 / 138));
	draw_sprite_general(sprBigMoon, 0, 0, 138 + i, 276, 1, x - 138 / 3 + addx + hue[i], y + 162 / 3 + (i * 2) / 3, 1 / 3, 2 / 3, 0, color2, color2, color2, color2, 0.95 + lengthdir_x(0.05, mydir[i]));
	mydir[i] += 4;
	if (mydir[i] > 360)
		mydir[i] -= 360;
	i += 1;
}

draw_set_blend_mode(bm_normal);
dir += 1;

// Glimmer in the ocean.
with (objSeaGlimmer)
{
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0,
		merge_color(c_white, merge_color(c_ltgray, c_silver, random(1)), random(1)), 1);
}

// Cascading waves.
with (objWave)
{
	image_alpha = 0.7;
	image_xscale = 1 + y * 0.02;
	if (y > 0)
		image_yscale = y * 0.01;
	else
		image_yscale = 0;
	dir += 2;
	if (y < 0)
		image_blend = c_white;
	else
		image_blend = merge_color(c_white, c_orange, y * (1 / (room_height + 32)));
	i = 0;
	
	repeat (6)
	{
		draw_sprite_ext(sprite_index, index[i], x + i * (sprite_get_width(sprite_index) * 0.5) * image_xscale, room_height / 2 + y * 0.5 * image_xscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		draw_sprite_ext(sprite_index, index[i], x - i * (sprite_get_width(sprite_index) * 0.5) * image_xscale, room_height / 2 + y * 0.5 * image_xscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		index[i] += 0.1;
		i += 1;
	}
	
	if (y < room_height + 60)
		y += 0.5;
	else
		y = -30;
}


/*
//Draw smaller sea waves.
i = 0
repeat(ceil((room_width + 96) / 96)) {
    if index1 < 28.15 color = merge_color(c_orange, c_silver, (index1 + 1) / 30)
    else color = merge_color(c_white, c_ltgray, ((index1 + 1) - 28) * 0.065)
    draw_sprite_ext(sprSea, index1, seax1 + i * 96, room_height / 2, 1, 1, 0, color, 0.25)
    if index1 < 28.15 color = merge_color(c_orange, c_ltgray, (index1 + 1) / 30)
    else color = merge_color(c_white, c_fuchsia, ((index1 + 1) - 28) * 0.065)
    draw_sprite_ext(sprSea, index1 - 1, seax1 + i * 96, room_height / 2, 1, 1, 0, color, 0.25)
    if index2 < 28.15 color = merge_color(c_fuchsia, c_teal, (index2 + 1) / 30)
    else color = merge_color(c_white, c_orange, ((index2 + 1) - 28) * 0.065)
    draw_sprite_ext(sprSea, index2, seax2 + i * 96, room_height / 2, 1, 1, 0, color, 0.25)
    if index2 < 28.15 color = merge_color(c_orange, c_fuchsia, (index2 + 1) / 30)
    else color = merge_color(c_orange, c_fuchsia, ((index2 + 1) - 28) * 0.065)
    draw_sprite_ext(sprSea, index2 - 1, seax2 + i * 96, room_height / 2, 1, 1, 0, color, 0.25)
    i += 1
}
if index1 < 44 index1 += 0.2
else index1 = 0
if index2 < 44 index2 += 0.2
else index2 = 0
if seax1 > -96 seax1 -= 1 + index1 * 0.03
else seax1 += 96
if seax2 > -96 seax2 -= 1 + index2 * 0.03
else seax2 += 96
*/
with (objBird)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);

if (surface_exists(surf1))
{
	draw_surface_ext(surf1, -1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(surf1, 0, 1, 1, 1, 0, c_black, 1);
	draw_surface_ext(surf1, 0, -1, 1, 1, 0, c_black, 1);
	draw_surface_ext(surf1, 1, 0, 1, 1, 0, c_black, 1);
	draw_surface_ext(surf1, 2, 2, 1, 1, 0, c_black, 0.5);
	draw_surface_ext(surf1, 0, 0, 1, 1, 0, c_white, 1);
}
else
{
	draw_set_font(fntSubtitles);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(x - 1, y, string_hash_to_newline("YOUR SYSTEM IS#OUT OF VIDEO MEMORY#PLEASE RESTART THE GAME!"));
	draw_text(x + 1, y, string_hash_to_newline("YOUR SYSTEM IS#OUT OF VIDEO MEMORY#PLEASE RESTART THE GAME!"));
	draw_text(x, y + 1, string_hash_to_newline("YOUR SYSTEM IS#OUT OF VIDEO MEMORY#PLEASE RESTART THE GAME!"));
	draw_text(x, y - 1, string_hash_to_newline("YOUR SYSTEM IS#OUT OF VIDEO MEMORY#PLEASE RESTART THE GAME!"));
	draw_set_color(c_white);
	draw_text(x, y, string_hash_to_newline("YOUR SYSTEM IS#OUT OF VIDEO MEMORY#PLEASE RESTART THE GAME!"));
}

// Causes the entire room to move.
__view_set( e__VW.Angle, 0, lengthdir_y(1, dir * 1.33) );

if (fade == 0)
{
	if (c_amount < 180)
	{
		c_amount += 10;
		color1 = merge_color(c_white, merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_white, merge_color(c_fuchsia, c_silver, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
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
		if (select == 0)
			scrSongVolume(c_amount * (1 / 180));
		color1 = merge_color(c_white, merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_white, merge_color(c_fuchsia, c_silver, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 10, __view_get( e__VW.YView, 0 ) - 10, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 10, color2, color1, color1, color2, 0);
		draw_set_blend_mode(bm_normal);
	}
	else
	{
		{
			if (select == 0)
			{
				// global.sequence      =      rmSequence1
				scrStopSong();
				scrSongVolume(0); // scrPlaySong(working_directory+"\ItsSafeNow.mp3")
				scrPlaySong(working_directory + "\\Static.mp3");
				room = nextlevel;
			}
			if (select == 1 && level == 1)
				room = rmControls; // scrPlaySong(working_directory+choose("\Knock.mp3",       "\InnerAnimal.mp3",       "\Hotline.mp3",       "\NearDark.mp3",       "\Crystals.mp3")) room      =      rmChapter
			if (select == 1 && level == 0)
				room = rmLevelSelect;
			if (select == 3)
				room = rmBandCredits;
		}
	}
}

d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);

/*
    draw_set_color(c_black)
    draw_rectangle(-1, -1, room_width + 1, 15, 0)
    draw_rectangle(-1, room_height + 1, room_width + 1, room_height - 15, 0)
    */
draw_set_color(c_white);
draw_set_font(fntDate);

draw_set_blend_mode(bm_subtract);
my_y = random(32);
draw_sprite_tiled(sprScanlines, 0, 0, my_y);

/*
draw_set_blend_mode(bm_subtract)
draw_circle_color(view_wview[0] / 2, view_hview[0] / 2, 240 + random(24), c_black, merge_color(c_orange, c_aqua, 0.25 + random(0.25)), 0)
draw_set_blend_mode(bm_normal)

/* */
/*  */
