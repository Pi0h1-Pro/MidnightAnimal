/// @description  Draw items

var a;

// Am I crouching?
if (b_crouch)
{
	// draw_sprite_ext(spr_playerBack, 0, x + lengthdir_x(-10, image_angle), y + lengthdir_y(-10, image_angle), 1, 1, image_angle, c_white, 1);
}
else
{
	// Draw legs shadow
	draw_sprite_ext(sprELegs, int_legsImageIndex, x + 4, y - 4, 1, 1, int_legsImageAngle, c_black, .4);
	
	// Draw legs
	draw_sprite_ext(sprELegs, int_legsImageIndex, x, y, 1, 1, int_legsImageAngle, c_white, 1);
}

// Draw torso shadow
draw_sprite_ext(sprite_index, image_index, x + 4, y - 4, 1, 1, image_angle, c_black, .4);

// Draw vision cone
if (id_target > -4)
{
	a = c_red;
}
else
{
	a = c_green;
}
draw_set_alpha(.5);
draw_triangle_colour(x, y, x + lengthdir_x(500, image_angle - 30), y + lengthdir_y(500, image_angle - 30), x + lengthdir_x(500, image_angle + 30), y + lengthdir_y(500, image_angle + 30), a, a, a, false);
draw_set_alpha(1);

// Draw self
draw_self();

// Draw muzzleflash (make sure I am in the attack state, that the recoil has happened, that the delay has gone off, and that I am not crouching
if (int_state == 2
	&& alarm[0] mod 5 == 0
	&& alarm[2] == -1
	&& !b_crouch)
{
	var a = choose(true, true, false);
	if (a)
	{
		var xx, yy;
		xx = x + lengthdir_x(35, image_angle - 5);
		yy = y + lengthdir_y(35, image_angle - 5);
		draw_sprite_ext(sprMuzzleFlash, 1, xx, yy, 1 + random(1), random(3), image_angle, c_white, 1);
	}
}

// draw_text(x, y - 50, string(int_state));
// if (p_path > -1){
//    draw_path(p_path, x, y, true);
//}
// draw_sprite(spr_playerBack, 0, int_pathX, int_pathY);
// draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);

