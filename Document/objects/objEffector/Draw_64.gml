/// @description  HUD effects.

screenzoom = 1.33 + global.screeneffect / 200;
chroma = 0 + global.screeneffect / 0.6;

draw_rectangle_colour(0, 0, width, height, c_black, c_black, c_black, c_black, 0);
draw_set_blend_mode(bm_add);
draw_set_blend_mode_ext(bm_one, bm_inv_src_color);
draw_surface_ext(application_surface, chroma, 0, screenzoom, screenzoom, 0, c_red, 0.1);
draw_surface_ext(application_surface, 0, 0, screenzoom, screenzoom, 0, c_lime, 0.1);
draw_surface_ext(application_surface, chroma, 0, screenzoom, screenzoom, 0, c_blue, 0.1);
draw_set_blend_mode(bm_normal);

draw_reset();

/// DEBUG: Draw information.
if (debug_mode)
	show_debug_overlay(true);
else
	show_debug_overlay(false);

/* if showinfo = 1 and scrMovingPlayerExists() {
    draw_set_font(fntTiny); draw_set_colour(c_white); draw_set_halign(fa_left)
    draw_text(32,32,"FPS: " + string(fps))
    draw_text(32,64,"CPU: " + string(fps_real))
    draw_text(32,96,"OBJECTS: " + string(instance_number(objFurniture)+instance_number(objWall)))
    draw_text(32,128,"ENEMIES: " + string(instance_number(objEnemy)))
    draw_text(32, 160, "DESAT: " + string(global.var_greyscale_fade))
    draw_text(32, 192, "CHARACTER: " + string(global.character))
    draw_text(32, 224, "HEALTH: " + string(objPlayer.hp))
    draw_text(32, 256, "MAX HP: " + string(objPlayer.max_hp))
    draw_text(32, 288, "THROWN?: " + string(objPlayer.thrown))
}

/* */
/*  */
