// DRAW STARS
i = 0;
repeat (72)
{
	draw_circle_color(starx[i], stary[i], starsize[i], merge_color(merge_color(c_silver, c_white, random(1)), c_white, random(starintensity[i])), c_black, 0);
	i += 1;
}

// SKY
draw_rectangle_color(-20, -20, room_width + 20, room_height + 20, merge_color(c_black, c_maroon, 0.15 + lengthdir_x(0.15, dir * 0.25)),
	merge_color(c_purple, c_maroon, 0.15 + lengthdir_x(0.15, dir * 0.25 + 45)),
	merge_color(c_purple, c_fuchsia, 0.65 + lengthdir_x(0.24, dir * 0.5 + 30)),
	merge_color(c_fuchsia, c_red, 0.65 + lengthdir_x(0.24, dir * 0.5)), 0);
draw_set_blend_mode(bm_add);

// MOON
draw_circle_color(room_width / 2, room_height / 3, 180 + lengthdir_x(40, dir * 0.25), c_maroon, c_black, 0);
draw_sprite_general(sprMoon, 0, 0, 0, 160, 160, room_width / 2 - 40, room_height / 4 - 40, 0.5, 0.5, -__view_get( e__VW.Angle, 0 ),
	c_white, c_fuchsia,
	merge_color(c_fuchsia, c_purple, 0.5 + lengthdir_x(0.5, dir)),
	merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, dir)), 1);
draw_set_blend_mode(bm_normal);

with (objSkyline1)
{
	// SKYLINE 1
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_general(sprite_index, 1, 0, 0, 160, 64, x, y, image_xscale, image_yscale, image_angle,
		merge_color(c_aqua, c_red, 0.5 + lengthdir_x(0.5, dir * 0.7)),
		merge_color(c_aqua, c_purple, 0.5 + lengthdir_x(0.5, dir + 110)),
		merge_color(c_white, c_maroon, 0.5 + lengthdir_x(0.5, dir * 0.8)),
		merge_color(c_white, c_fuchsia, 0.5 + lengthdir_x(0.5, dir * 0.8 + 110)), image_alpha);
	
	draw_sprite_general(sprite_index, 2, 0, 0, 160, 64, x, y, image_xscale, image_yscale, image_angle,
		merge_color(c_red, c_white, 0.5 + lengthdir_x(0.5, dir * 0.7)),
		merge_color(c_red, c_white, 0.5 + lengthdir_x(0.5, dir + 110)),
		merge_color(c_fuchsia, c_aqua, 0.5 + lengthdir_x(0.5, dir * 0.8)),
		merge_color(c_fuchsia, c_purple, 0.5 + lengthdir_x(0.5, dir * 0.8 + 110)), image_alpha);
	dir += 2;
	if (x < room_width)
		x += 0.15;
	else
		x -= room_width;
}

with (objSkyline2)
{
	// SKYLINE 2
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_general(sprite_index, 1, 0, 0, 200, 64, x, y, image_xscale, image_yscale, image_angle,
		merge_color(c_aqua, c_fuchsia, 0.5 + lengthdir_x(0.5, dir * 0.7)),
		merge_color(c_aqua, c_purple, 0.5 + lengthdir_x(0.5, dir + 110)),
		merge_color(c_white, c_fuchsia, 0.5 + lengthdir_x(0.5, dir * 0.8)),
		merge_color(c_fuchsia, c_purple, 0.5 + lengthdir_x(0.5, dir * 0.8 + 110)), image_alpha);
	
	draw_sprite_general(sprite_index, 2, 0, 0, 200, 64, x, y, image_xscale, image_yscale, image_angle,
		merge_color(c_silver, c_white, 0.5 + lengthdir_x(0.5, dir * 0.7)),
		merge_color(c_white, c_white, 0.5 + lengthdir_x(0.5, dir + 110)),
		merge_color(c_fuchsia, c_aqua, 0.5 + lengthdir_x(0.5, dir * 0.8)),
	
	merge_color(c_fuchsia, c_red, 0.5 + lengthdir_x(0.5, dir * 0.8 + 110)), image_alpha);
	draw_set_blend_mode(bm_add);
	i = 0;
	repeat (31)
	{
		draw_sprite_general(sprite_index, 2, 0, i * 2, 160, i * 2 + 1, x + lengthdir_x(1, dir + i * 25), y + 96 - i, image_xscale, -0.5, image_angle, merge_color(c_purple, c_white, 0.5 + lengthdir_x(0.5, dir * 0.7)), merge_color(c_red, c_white, 0.5 + lengthdir_x(0.5, dir + 110)), merge_color(c_fuchsia, c_red, 0.5 + lengthdir_x(0.5, dir * 0.8)), merge_color(c_fuchsia, c_red, 0.5 + lengthdir_x(0.5, dir * 0.8 + 110)), image_alpha);
		i += 1;
	}
	draw_set_blend_mode(bm_normal);
	dir += 2;
	if (x < room_width + 160)
		x += 0.2;
	else
		x -= room_width + 160;
}



draw_set_blend_mode(bm_add);


// Draw waves.
draw_rectangle_color(0, room_height / 2, room_width, room_height / 2 + 32, c_white, c_ltgray, c_black, c_black, 0);
with (objSeaGlimmer)
	draw_sprite_ext(sprSeaGlimmer, image_index, x, y, 1, 1, 0, merge_color(c_white, merge_color(c_ltgray, c_silver, random(1)), random(1)), 1);

draw_set_blend_mode(bm_normal);

// Draw houses on the horizon.
with (objPalmTrees)
{
	draw_sprite_general(sprHouseSilhouettes, 1, 0, 0, 64, 160, x, room_height / 5, 1, 1, 0, merge_color(c_white, c_silver, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_white, c_ltgray, 0.5 + lengthdir_x(0.5, dir)), c_silver, c_black, 0.7);
	draw_sprite_general(sprHouseSilhouettes, 1, 0, 0, 64, 160, x, (room_height / 5) + 20, 1, 1, 0, merge_color(c_white, c_silver, 0.5 + lengthdir_x(0.5, dir)), merge_color(c_white, c_ltgray, 0.5 + lengthdir_x(0.5, dir)), c_silver, c_black, 0.7);
}
if (myx > -128)
	myx -= 8;
else
	myx = 0;
dir += 4;
__view_set( e__VW.Angle, 0, lengthdir_x(2, dir * 0.3) );




if (fade == 0)
{
	if (c_amount < 180)
	{
		c_amount += 5;
		if (c_amount > 180)
			c_amount = 180;
		color1 = merge_color(c_black, merge_color(c_white, c_black, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_black, merge_color(c_white, c_dkgray, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 20, __view_get( e__VW.YView, 0 ) - 20, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 20, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 20, color1, color2, color2, color1, 0);
		draw_set_blend_mode(bm_normal);
	}
}

if (fade == 1)
{
	if (c_amount > 0)
	{
		c_amount -= 1.8;
		if (c_amount < 0)
			c_amount = 0;
		color1 = merge_color(c_black, merge_color(c_white, c_black, 0.5 + lengthdir_x(0.5, c_amount)), 0.5 + lengthdir_x(0.5, c_amount));
		if (c_amount > 90)
			color2 = merge_color(c_black, merge_color(c_white, c_white, abs(lengthdir_y(1, c_amount))), abs(lengthdir_y(1, c_amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(__view_get( e__VW.XView, 0 ) - 20, __view_get( e__VW.YView, 0 ) - 20, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 20, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 20, color2, color1, color1, color2, 0);
		draw_set_blend_mode(bm_normal);
	}
	else
	{
		room_goto(global.level);
	}
}

if (fade == 1)
{
	if (c_amount > 0)
	{
		c_amount -= 5;
		if (global.revisit == 1)
		{
			sxeasy_setVolume(c_amount * (1 / 180));
		}
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
	
	draw_set_blend_mode(bm_subtract);
	my_y = random(32);
	my_x = random(32);
	draw_sprite_tiled_ext(sprNoise, 0, -my_x, -my_y, 1, 1, c_white, 1);
	draw_circle_color(room_width / 2, room_height / 2, room_width * 0.8 + random(10), c_black, c_gray, 0);
	draw_set_blend_mode(bm_normal);
}

/* if wait>0 wait-=1 else fade=1
dir+=0.25
color2=merge_color(c_white,c_black,0.7+lengthdir_x(0.25,dir))
color1=merge_color(c_purple,merge_color(merge_color(c_fuchsia,c_red,0.5+lengthdir_x(0.5,dir*3.12)),c_black,0.625+lengthdir_y(0.225,dir*1.73)),0.5+lengthdir_y(0.5,dir*1.73))
d3d_set_projection_ortho(0,0,view_wview[0],view_hview[0],0)
draw_rectangle_color(view_xview[0],view_yview[0]+60,view_xview[0]+view_wview[0],view_yview[0]+view_hview[0]-60,color2,color2,color1,color1,0)
draw_set_blend_mode(bm_normal)
global.color=c_black
with objHouseReturn draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.color,image_alpha)
with objHouse draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.color,image_alpha)
i=0
repeat (5) {
draw_sprite_ext(sprPalmTrees,palmindex[i],palmx[i],room_height+65,1,1,0,global.color,1)
palmx[i]-=8-global.revisit*16
if global.revisit=1 {
if palmx[i]>=room_width+60 {palmx[i]=-60 palmindex[i]=floor(random(6))}
} else {
if palmx[i]<=-60 {palmx[i]=room_width+60 palmindex[i]=floor(random(6))}
}
i+=1
}



d3d_set_projection_ortho(0,0,view_wview[0],view_hview[0],0)
draw_set_color(c_black)
draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+view_wview[0],view_yview[0]+60,0)
draw_rectangle(view_xview[0],view_yview[0]+view_hview[0],view_xview[0]+view_wview[0],view_yview[0]+view_hview[0]-60,0)
if fade=0 {
if c_amount<180 {
c_amount+=10
color1=merge_color(c_black,merge_color(c_white,c_white,0.5+lengthdir_x(0.5,c_amount)),0.5+lengthdir_x(0.5,c_amount))
if c_amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,c_amount))),abs(lengthdir_y(1,c_amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(view_xview[0]-10,view_yview[0]-10,view_xview[0]+view_wview[0]+10,view_yview[0]+view_hview[0]+10,color1,color2,color2,color1,0)
draw_set_blend_mode(bm_normal)
}
}

if fade=1 {
if c_amount>0  {
c_amount-=5
if global.revisit=1 { sxeasy_setVolume(c_amount*(1/180))}
color1=merge_color(c_black,merge_color(c_white,c_white,0.5+lengthdir_x(0.5,c_amount)),0.5+lengthdir_x(0.5,c_amount))
if c_amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,c_amount))),abs(lengthdir_y(1,c_amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(view_xview[0]-10,view_yview[0]-10,view_xview[0]+view_wview[0]+10,view_yview[0]+view_hview[0]+10,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
} else {
if global.revisit=1 {sxeasy_stop() sxeasy_setVolume(1) if string_length(global.song)>0 {if global.nextlevel=rmSequence12bDownstairs nothing=1 else sxeasy_play(global.song)}}
room_goto(global.interlude)
}
}



d3d_set_projection_ortho(0,0,view_wview[0],view_hview[0],0)
draw_set_color(c_black)
//draw_rectangle(0,0,room_width,55,0)
//draw_rectangle(0,room_height,room_width,room_height-65,0)
draw_set_blend_mode(bm_subtract)
my_y=random(32)
draw_sprite_tiled(sprScanlines,0,0,my_y)
draw_set_blend_mode(bm_subtract)
draw_circle_color(view_wview[0]/2,view_hview[0]/2,240+random(24),c_black,merge_color(c_white,c_white,0.25+random(0.25)),0)
draw_set_blend_mode(bm_normal)

/* */
/*  */
