/// @description  Draw level clear.
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);

// Draw background with yellow tint.
draw_set_alpha(alpha);
draw_rectangle_color(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), global.rubedo, global.rubedo, global.rubedo, global.rubedo, 0);
draw_set_alpha(1);

if (cut == 0)
{
	if (alpha < 0.8)
		alpha += 0.05;
}
else
{
	if (alpha > 0)
		alpha -= 0.05;
}

if (state == 0)
{
	// Draw ink blot.
	draw_sprite_ext(sprite_index, 4, blot, 0, 1, 1, 0, c_white, 1);
	
	// Draw character.
	draw_sprite_ext(sprite_index, 0, character, 0, 1, 1, 0, c_white, 1);
	
	if (cut == 0)
	{
		if (blot > 0)
			blot -= 80;
		if (character > 0)
			character -= 80;
	}
	else
	{
		if (blot < 1280)
			blot += 80;
		if (character < 640)
			character += 80;
	}
}

// Draw text:

// 'WE'RE':
if (state == 1)
{
	// Draw ink blot.
	draw_sprite_ext(sprite_index, 4, 0, 0, 1, 1, 0, c_white, 1);
	
	// Draw character.
	draw_sprite_ext(sprite_index, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	// Draw text.
	draw_sprite_ext(sprite_index, 1, text1, 0, 1, 1, 0, c_white, 1);
	if (cut == 0)
	{
		if (text1 < 0)
			text1 += 40;
	}
	else
	{
		if (text1 > -240)
			text1 -= 40;
	}
}

// 'DONE':
if (state == 2)
{
	// Draw ink blot.
	draw_sprite_ext(sprite_index, 4, 0, 0, 1, 1, 0, c_white, 1);
	
	// Draw character.
	draw_sprite_ext(sprite_index, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	// Draw text.
	draw_sprite_ext(sprite_index, 1, 0, 0, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, 2, text2, 0, 1, 1, 0, c_white, 1);
	if (cut == 0)
	{
		if (text2 < 0)
			text2 += 40;
	}
	else
	{
		if (text2 > -240)
			text2 -= 40;
	}
}

// 'HERE':
if (state == 3)
{
	// Draw ink blot.
	draw_sprite_ext(sprite_index, 4, 0, 0, 1, 1, 0, c_white, 1);
	
	// Draw character.
	draw_sprite_ext(sprite_index, 0, 0, 0, 1, 1, 0, c_white, 1);
	
	// Draw text.
	draw_sprite_ext(sprite_index, 1, 0, 0, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, 2, 0, 0, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, 3, text3, 0, 1, 1, 0, c_white, 1);
	if (cut == 0)
	{
		if (text3 < 0)
			text3 += 40;
	}
	else
	{
		if (text3 > -240)
			text3 -= 40;
	}
}

// draw_sprite_ext(sprHUDBars, 0, 0, -5, 0.8, 0.7, 0, c_black, 1)

