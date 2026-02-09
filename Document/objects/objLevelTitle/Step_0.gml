// Initiate surface.
if (!surface_exists(global.surf1))
{
	global.surf1 = surface_create(room_width, room_height);
	surface_set_target(global.surf1);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}

surface_set_target(global.surf1);
draw_clear_alpha(c_black, 0);

// Draw chapter.
draw_set_font(fntChapterTitle);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(merge_color(c_yellow, c_orange, 0.5 + lengthdir_y(0.5, pointx * 2)));
draw_text(room_width / 2 + 1, y - 41, string_hash_to_newline(global.pretitle));

// Draw chapter name.
draw_set_color(merge_color(c_fuchsia, c_yellow, 0.5 + lengthdir_x(0.5, pointx * 2)));
draw_text(room_width / 2, y - 42, string_hash_to_newline(global.pretitle));
draw_set_font(fntChapter);

// Text.
i = string_length(global.title);
startx = string_width(string_hash_to_newline(global.title)) * 0.5 + room_width * 0.5 - string_width(string_hash_to_newline(string_copy(global.title, 1, 1))) - 5;
repeat (string_length(global.title))
{
	letter = string_copy(global.title, i, 1);
	if (string_upper(letter) == "I")
		addx = string_width(string_hash_to_newline(letter)) * 0.4;
	else
		addx = 0;
	ii = 0;
	if (rise[i - 1] > 0)
	{
		riseadd = rise[i - 1] + lengthdir_x(0.3 * rise[i - 1], -dir * 1.13 + i * 35);
	}
	else
		riseadd = 0;
	if (rise[i - 1] < 10)
		rise[i - 1] += 0.25;
	repeat (riseadd)
	{
		amount = -0.5 + lengthdir_x(1.5, dir * 0.73);
		if (amount < 0)
			amount = 0;
		draw_set_color(merge_color(c_white, merge_color(c_red, make_color_hsv(random(255), random(255), 255), amount), ii * (1 / 13)));
		draw_text_transformed(startx + addx + ii, room_height * 0.5 - ii, string_hash_to_newline(letter), 1, 1, 0);
		ii += 1;
	}
	color2 = merge_color(c_white, draw_get_color(), abs(prefixblend));
	if (riseadd > 0)
	{
		draw_text_transformed(startx + addx + riseadd - 1, room_height * 0.5 - riseadd - 1, string_hash_to_newline(letter), 1, 1, 0);
		draw_text_transformed(startx + addx + riseadd + 1, room_height * 0.5 - riseadd - 1, string_hash_to_newline(letter), 1, 1, 0);
	}
	color1 = merge_color(c_black, c_white, abs(prefixblend));
	draw_text_transformed_color(startx + addx + riseadd, room_height * 0.5 - riseadd, string_hash_to_newline(letter), 1, 1, 0, color1, color1, color2, color2, 1);
	i -= 1;
	startx -= string_width(string_hash_to_newline(letter));
}
surface_reset_target();
dir += 4;
if (prefixblend < 1)
{
	if (prefixblend < 0.03)
		prefixblend += 0.001;
	else
		prefixblend += 0.01;
}

// Generate fences.
/* if reload > 0 reload -= 1
else {
    if round(random(180)) = 2 {
        instance_create(room_width, 208, objSceneFence) reload = 300
    }
}

/* */
/*  */
