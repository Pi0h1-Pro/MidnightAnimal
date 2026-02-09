/// @description  Draw player.

if (!instance_exists(objSunset))
	draw_sprite_ext(sprShadow, 0, x, y, 0.5, 0.5, 0, c_black, 1);

// Draw light.
if (light > 0)
	light -= 1;
draw_set_blend_mode(bm_add);
draw_circle_color(x, y, 32 + random(6) + light, make_color_hsv(0, 0, 30), c_black, 0);
draw_set_blend_mode(bm_normal);

// Draw healthbar.
// draw_health(c_white)

if (sprite_index == simoneWalkShield || sprite_index == simoneAttackShield)
{
	draw_set_alpha(hp_alpha);
	draw_healthbar_circular(x, y, 100, 100, global.nigredo, 18, 0.8, 4); // Back - static.
	draw_healthbar_circular(x, y, hp_shield, max_shield, c_white, 18, 1, 4); // Actual health.
	draw_reset();
}

// Dash if already moving.
if (state_name == "Default")
{
	draw_sprite_ext(legsprite, legindex, x + 1, y + 1, image_xscale, image_yscale, legdir, c_black, 0.4);
	draw_sprite_ext(sprite_index, image_index, x + 1, y + 1, image_xscale, left, dir, c_black, 0.4);
	
	draw_sprite_ext(legsprite, legindex, x, y, image_xscale, image_yscale, legdir, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, left, dir, image_blend, image_alpha);
}
else if (state_name == "Dash")
	exit;

// DEBUG: Draw bounding box.
// draw_set_alpha(0.75)
// draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,true)
// draw_set_alpha(1)

if (aimon == 1)
	dir = point_direction(x, y, global.mousex, global.mousey);

if (light > 3)
	light -= 3;
if (reload > 0)
	reload -= 1;

