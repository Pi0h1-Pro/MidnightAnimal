dir += 4;

// Control room fade.
if (wait > 0)
	wait -= 1;
else
	fade = 1;

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
draw_rectangle_color(-20, -20, room_width + 20, room_height + 20, merge_color(c_black, c_navy, 0.15 + lengthdir_x(0.15, dir * 0.25)), merge_color(c_black, c_navy, 0.15 + lengthdir_x(0.15, dir * 0.25 + 45)), merge_color(c_purple, c_blue, 0.65 + lengthdir_x(0.24, dir * 0.6 + 30)), merge_color(c_purple, c_blue, 0.65 + lengthdir_x(0.24, dir * 0.6)), 0);

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
draw_circle_color(room_width / 2, room_height / 3 + 90, 180 + lengthdir_x(40, dir * 0.25), c_aqua, c_black, 0);

// Draws the innermost smaller ring of the sun, which just barely forms a halo around the sun, and is a pinkish tinge.
draw_circle_color(room_width / 2, room_height / 3 + 90, 80 + lengthdir_x(40, dir * 0.25), c_yellow, c_black, 0);

// Draws a faded version of the sun which is darker.
// draw_sprite_general(sprCitySun, 0, 0, 0, 200, 200, room_width / 2 - 100, room_height / 3, 1, 1, 0, c_red, c_red, merge_color(c_yellow, c_white, objMain.sunalpha + lengthdir_x(0.5, dir)), merge_color(c_yellow, c_white, objMain.sunalpha + lengthdir_x(0.5, dir)), objMain.sunalpha)

// Draw horizon strip.
color = merge_color(merge_color(c_aqua, c_maroon, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_fuchsia, c_yellow, 0.5 + lengthdir_x(0.5, dir)), i * (1 / 138));
draw_rectangle_color(0, room_height / 2 + 4, room_width, room_height / 2 + 33, c_black, c_black, color, color, 0);

draw_set_blend_mode(bm_normal);

// Draws the actual sun itself, which is maroon-red at the top, and slowly fades down to reddish-white.
draw_sprite_general(sprCitySun, 0, 0, 0, 200, 200, room_width / 2 - 100, room_height / 3 - sunalpha * 10, 1, 1, 0, merge_color(c_white, c_yellow, 0.2), merge_color(c_white, c_yellow, 0.2), merge_color(c_yellow, c_white, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_yellow, c_white, 0.5 + lengthdir_x(0.5, dir)), sunalpha);

// End drawing the sun.

// Draw the mountains.
draw_sprite_general(sprMountainDistant, 0, 0, 0, 482, 197, x, y, 1, 1.1, 0, c_black, c_black, merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.1, dir * 0.1)), merge_color(c_black, c_aqua, 0.3 + lengthdir_x(0.1, dir * 0.1 + 110)), image_alpha);
draw_sprite_general(sprMountainBack, 0, 0, 0, 482, 197, x, y, 1, 1, 0, c_black, c_black, merge_color(c_black, c_aqua, 0.2 + lengthdir_x(0.1, dir * 0.1)), merge_color(c_black, c_aqua, 0.2 + lengthdir_x(0.1, dir * 0.1 + 110)), image_alpha);
draw_sprite_general(sprMountainMid, 0, 0, 0, 482, 197, x, y, 1, 1, 0, c_black, c_black, merge_color(c_black, c_aqua, 0.1 + lengthdir_x(0.1, dir * 0.1)), merge_color(c_black, c_aqua, 0.1 + lengthdir_x(0.1, dir * 0.1 + 110)), image_alpha);
draw_sprite_general(sprMountainFront, 0, 0, 0, 482, 197, x, y, 1, 1, 0, c_black, c_black, merge_color(c_black, c_black, 0.2 + lengthdir_x(0.1, dir * 0.1)), merge_color(c_black, c_black, 0.2 + lengthdir_x(0.1, dir * 0.1 + 110)), image_alpha);

with (objBird)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 1);

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

// Causes the entire room to move.
__view_set( e__VW.Angle, 0, lengthdir_y(1, dir * 0.83) );

if (fade == 1)
{
	if (c_amount > 0)
	{
		c_amount -= 5;
		if (global.revisit == 1)
		{
			sxeasy_setVolume(c_amount * (1 / 180));
		}
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
		if (global.revisit == 1)
		{
			sxeasy_stop();
			sxeasy_setVolume(1);
			if (string_length(global.song) > 0)
			{
				if (global.nextlevel == rmSequence12bDownstairs)
					nothing = 1;
				else
					sxeasy_play(global.song);
			}
		}
		room_goto(global.interlude);
	}
}

// The entire scene shifts back and forth.
__view_set( e__VW.Angle, 0, lengthdir_y(0.4, dir * 0.33) );
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);

/* if fade = 0 {
    if c_amount < 180 {
        c_amount += 5
        if c_amount > 180 c_amount = 180
        color1 = merge_color(c_black, merge_color(c_white, c_black, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount))
        if c_amount > 90 color2 = merge_color(c_black, merge_color(c_white, c_dkgray, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)))
        else color2 = c_white
        draw_set_blend_mode(bm_subtract)
        draw_rectangle_color(view_xview[0] - 20, view_yview[0] - 20, view_xview[0] + view_wview[0] + 20, view_yview[0] + view_hview[0] + 20, color1, color2, color2, color1, 0)
        draw_set_blend_mode(bm_normal)
    }
}

if fade = 1 {
    if c_amount > 0 {
        c_amount -= 5
        if global.revisit = 1 {
            scrSongVolume(c_amount * (1 / 180))
        }
    } else {
        if global.revisit = 1 {
            scrStopSong() scrSongVolume(1) if string_length(global.song) > 0 {
                if global.nextlevel = rmSequence12bDownstairs nothing = 1
                else scrPlaySong(global.song)
            }
        }
        room_goto(global.interlude)
    }
}*/
draw_set_blend_mode(bm_subtract);
my_y = random(32);
my_x = random(32);
draw_sprite_tiled_ext(sprNoise, 0, -my_x, -my_y, 1, 1, c_white, 1);
draw_circle_color(room_width / 2, room_height / 2, room_width * 0.8 + random(10), c_black, c_gray, 0);
draw_set_blend_mode(bm_normal);

/* */
/*  */
