/// @description  Draw cursor.

// Adjust zoom for sniper; set default zoom.
if (instance_exists(objPlayer))
{
	if (keyboard_check(vk_shift))
	{
		if (scrCurrentWeaponExt(objPlayer.sprite_index == 29) || scrCurrentWeaponExt(objPlayer.sprite_index) == 49)
			factor = 2.5 + (global.scopeZoom / 2);
		else
			factor = 2.5;
	}
	else
		factor = 1.5;
	
	// Aiming with mouse.
	
	// Draw cursor to the boundaries of the view if looking further.
	global.mousex = objPlayer.x + ((display_mouse_get_x() - width * 0.5) * (__view_get( e__VW.WView, 0 ) / width)) * factor;
	global.mousey = objPlayer.y + ((display_mouse_get_y() - height * 0.5) * (__view_get( e__VW.HView, 0 ) / height)) * factor;
	
	if (global.mousex < __view_get( e__VW.XView, 0 ))
		global.mousex = __view_get( e__VW.XView, 0 );
	if (global.mousey < __view_get( e__VW.YView, 0 ))
		global.mousey = __view_get( e__VW.YView, 0 );
	if (global.mousex > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))
		global.mousex = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 );
	if (global.mousey > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
		global.mousey = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 );
	x = global.mousex;
	y = global.mousey;
	
	// Draw cursor.
	scrGetCursor();
	
	// Lock-on behaviour.
	scrLockOnBehaviour();
}

global.dir += 1;

test = 1;

if (!instance_exists(objPlayer)
	|| instance_exists(mnCharacterSelect))
	test = 0;

// Draw cursor.
if (test == 1)
	scrGetCursor();

if (DrawGrid)
{
	draw_set_alpha(0.3);
	mp_grid_draw(global.grid);
	draw_set_alpha(1);
}

/// Draw HUD & UI.
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), 0);

draw_sprite_stretched_ext(sprLens, 0, 0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), c_white, 0.7);

// draw_sprite_stretched_ext(sprBorder, 0, 0, 0, view_wview, view_hview, c_white, 1)

// Draw letterbox.
scrDrawLetterBox();

// Draw HUD.
if (global.hud == 1 && global.done == 0)
{
	// Draw HUD vignette.
	// draw_sprite_ext(sprHUDBars, 0, 0, -5, 0.8, 0.7, 0, c_black, 1)
	
	if (global.character == 0)
		hudJohn();
	if (global.character == 1)
		hudThomas();
	if (global.character == 2)
		hudPierrette();
	if (global.character == 3)
		hudSimone();
}

// Draw distortion.
if (brus > 0)
{
	brus -= 1;
	if (lastbrus == 0)
		audio_play_sound(sndNoise, 1, 0);
	lastbrus = brus;
	if (brus == 0)
		audio_stop_sound(sndNoise);
	draw_sprite_tiled(choose(noise1, noise2, noise3, noise4), global.dir * 0.5, 0, 0);
}

// Draw static.
if (staticfx > 0)
{
	staticfx -= 1;
	if (laststatic == 0)
		audio_play_sound(sndNoise, 1, 0);
	laststatic = staticfx;
	if (staticfx == 0)
		audio_stop_sound(sndNoise);
	draw_sprite_tiled(sprStatic, global.dir * 0.5, 0, 0);
}

scrDrawDamage();
scrDrawScratch();
scrDrawFlash();

// Draw arrow.
/* if instance_exists(objKnockedOut) {
    draw_sprite(sprArrow,arrow_index,objKnockedOut.x,objKnockedOut.y-24)
    arrow_index += 0.35
}*/

// Fade screens.
if (fade == 0)
{
	if (amount < 180)
	{
		color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, amount)), 0.5 + lengthdir_x(0.5, amount));
		if (amount > 90)
			color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, amount))), abs(lengthdir_y(1, amount)));
		else
			color2 = c_white;
		draw_set_blend_mode(bm_subtract);
		draw_rectangle_color(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, color1, color2, color2, color1, 0);
		draw_set_blend_mode(bm_normal);
	}
}

if (fade == 1)
{
	color1 = merge_color(c_black, merge_color(c_aqua, c_white, 0.5 + lengthdir_x(0.5, amount)), 0.5 + lengthdir_x(0.5, amount));
	if (amount > 90)
		color2 = merge_color(c_black, merge_color(c_fuchsia, c_white, abs(lengthdir_y(1, amount))), abs(lengthdir_y(1, amount)));
	else
		color2 = c_white;
	draw_set_blend_mode(bm_subtract);
	draw_rectangle_color(-10, -10, __view_get( e__VW.WView, 0 ) + 10, __view_get( e__VW.HView, 0 ) + 10, color2, color1, color1, color2, 0);
	draw_set_blend_mode(bm_normal);
}

// Draw distortion.
draw_set_blend_mode(bm_add);
myx = -random(32);
myy = -random(32);
draw_sprite_stretched_ext(sprNoise, 0, myx, myy, display_get_gui_width(), display_get_gui_height(), merge_color(c_black, c_white, 0.6), 0.3);
draw_set_blend_mode(bm_normal);

/* */
/*  */
