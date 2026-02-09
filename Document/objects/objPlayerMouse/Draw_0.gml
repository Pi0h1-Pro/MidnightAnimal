if (persistent == 1)
	exit;

// DRAW GLOW
draw_set_blend_mode(bm_add);
draw_circle_color(x, y, 48 + random(6) + light, make_color_hsv(0, 0, 30 + light * 2), c_black, 0);
draw_set_blend_mode(bm_normal);

if (sprite_index == last_sprite || sprite_index == sprPRoll)
	nothing = 1;
else
{
	scrUpdateMaskPos(sprite_index);
	last_sprite = sprite_index;
}

if (sprite_index == sprPTakePhone)
{
	if (!instance_exists(objPhoneConversation))
		sprite_index = sprPWalkUnarmed;
	else
	{
		if (image_index < 3)
			image_index += 0.15;
	}
}

// DRAW LEGS
if (myspeed == 2.25)
	legsprite = sprLegsStairs;
else
	legsprite = sprLegs;

// Draw dual wield.

// Checks to see if the sprites are currently the dual-wielding sprites.
if (sprite_index == sprPWalkDW || sprite_index == sprPTurnDW)
{
	// Extra safeguard to check to see if the player is really dual-wielding or if it's just all a ruse.
	if (aimon == 1)
	{
		// This is the directional component of the arms; originally, it orients towards the mouse, but will gradually increase as the player
		// holds down the right mouse.
		if (global.xbox == 1)
			dir = scrXboxPlayerLook() + addangle;
		else
			dir = point_direction(x, y, global.mousex, global.mousey) + addangle;
		
		// Variable to check to see if the player is aiming further.
		turn = keyboard_check(vk_shift);
		
		// Spread arms to shoot.
		
		// Check to see if the player is holding the right mouse or LB, which allows the arms to spread.
		if (mouse_check_button(mb_right) || button_pressed(5))
		{
			// If the angle of the arms is less than 90, than add a base of 4.5 (degress) per step. If the player's firing, make it faster.
			// If the player's turning, make it faster.
			if (armangle < 90)
				armangle += 4.5 + 4.5 * (1 - mouse_check_button(mb_left)) + turn * 4.5;
			
			// armangle1 corresponds to the top arm.
			armangle1 = dir + armangle;
			
			// armangle2 corresponds to the bottom arm.
			armangle2 = dir - armangle;
			
			// If the right mouse button isn't being held...
		}
		else
		{
			// If the angle of the arms is above 5, subtract 5 per step. You want to check to see if it's above 5 because if it's below 5, the angle will be negative.
			if (armangle > 5)
				armangle -= 5; // This is to return the armangle to its base of 0.
			else
				armangle = 0;
			
			// See above for correspondent values.
			armangle1 = dir + armangle;
			armangle2 = dir - armangle;
			
			// If the armangle is at its default position 0, both arms will point at the mouse. Don't worry about the vector calculations for lengthdir,
			// they were determined through some fantastic guesswork.
			if (armangle == 0)
			{
				armangle1 = point_direction(x + lengthdir_x(6, dir + 90), y + lengthdir_y(6, dir + 90), global.mousex, global.mousey);
				armangle2 = point_direction(x + lengthdir_x(6, dir - 90), y + lengthdir_y(6, dir - 90), global.mousex, global.mousey);
			}
		}
		
		// addangle is a variable which controls how much the arms should spread by.
		addangle = scrRotate(addangle, armangle * (turn) * aimon, 10);
		
		// scrRotate takes three arguments:
		// argument0 = dir is the current direction.
		// argument1 = destdir is the desired direction, or where you want the final angle to be pointing towards.
		// argument2 = turnspeed which is the rotation speed.
		// scrRotate returns the direction which the instance has been rotated.
		
		// Basically, what we did was, we want to add to the current armangle the final direction to which the arm has rotated.
	} // If !aimon = 1, which means we're not actually aiming...
	else
	{
		// Every angle resets to the default direction, dir, and addangle is 0 since you're not adding anything.
		armangle = dir;
		addangle = 0;
		armangle1 = dir;
		armangle2 = dir;
	}
	
	// This controls behaviour for the player if aiming further, or, in the game, turning the player's head.
	
	// If turn is active (you're pressing the shift key) and you're also pressing the right mouse key, the current sprite is the turning sprite.
	if (turn && mouse_check_button(mb_right))
		sprite_index = sprPTurnDW;
	else
	{
		// Otherwise, if you're not adding anything to the overall angle, the base sprite returns to the normal walking animation.
		if (addangle < 5)
			sprite_index = sprPWalkDW;
	}
	
	// If your current sprite is the player turning his head, the image index is a floor of the angle being added divided by 31.
	// This will animate the player turning his head and synchronise it with the arms spreading.
	if (sprite_index == sprPTurnDW)
		image_index = floor(addangle * (1 / 31));
	
	// Draw legs.
	draw_sprite_ext(legsprite, legindex, x + 1, y + 1, image_xscale, image_yscale, legdir, c_black, 1);
	
	// Draw leg shadow.
	draw_sprite_ext(sprite_index, image_index, x + 1, y + 1, image_xscale, left, dir, c_black, 0.5);
	draw_sprite_ext(legsprite, legindex, x, y, image_xscale, image_yscale, legdir, image_blend, image_alpha);
	
	// Draw the upper arm.
	draw_sprite_ext(sprArmHandgun, index, x + lengthdir_x(8, dir + 90), y + lengthdir_y(8, dir + 90), image_xscale, image_yscale, armangle1, image_blend, 1);
	
	// Draw the lower arm.
	draw_sprite_ext(sprArmHandgun, index, x + lengthdir_x(8, dir - 90), y + lengthdir_y(8, dir - 90), image_xscale, -1, armangle2, image_blend, 1);
	
	// Draw the player walking while dual-wielding/
	if (sprite_index == sprPWalkDW)
	{
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, dir, image_blend, image_alpha);
		draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, dir, image_blend, image_alpha);
	}
	else
	{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, dir, image_blend, image_alpha);
		draw_sprite_ext(sprPWalkDW, 1, x, y, image_xscale, image_yscale, dir, image_blend, image_alpha);
	}
}
else
{
	if (aimon == 1)
	{
		if (global.xbox == 1)
			dir = scrXboxPlayerLook();
		else
			dir = point_direction(x, y, global.mousex, global.mousey);
	}
	draw_sprite_ext(legsprite, legindex, x + 1, y + 1, image_xscale, image_yscale, legdir, c_black, 0.5);
	draw_sprite_ext(sprite_index, image_index, x + 1, y + 1, image_xscale, left, dir, c_black, 0.5);
	draw_sprite_ext(legsprite, legindex, x, y, image_xscale, image_yscale, legdir, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, left, dir, image_blend, image_alpha);
}

// LEAVE BAG
if (sprite_index == sprPLeaveBag)
{
	dir = point_direction(x, y, objDumpster.x + 20, objDumpster.y + 12);
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale * left, dir, image_blend, image_alpha);
if (reload > 0)
	reload -= 1;
if (light > 0)
	light -= 3;
else
	light = 0;

// THROW WEAPONS
if (sprite_index == sprPWalkThrow)
{
	left = 1;
	draw_sprite_ext(sprThrowWeapons, throwindex, x + lengthdir_x(throwadd[floor(image_index)], dir) + lengthdir_x(7, dir - 90) + 1, y + 1 + lengthdir_y(throwadd[floor(image_index)], dir) + lengthdir_y(7, dir - 90), image_xscale, image_yscale, dir + lengthdir_x(20, 360 * (image_index * (1 / 8))), c_black, 0.5);
	draw_sprite_ext(sprThrowWeapons, throwindex, x + lengthdir_x(throwadd[floor(image_index)], dir) + lengthdir_x(7, dir - 90), y + lengthdir_y(throwadd[floor(image_index)], dir) + lengthdir_y(7, dir - 90), image_xscale, image_yscale, dir + lengthdir_x(20, 360 * (image_index * (1 / 8))), image_blend, image_alpha);
}

// PUT ON MASK
if (sprite_index == sprPMaskSlip)
{
	draw_sprite_ext(masksprite, image_index, x, y, image_xscale, image_yscale * left, dir, image_blend, image_alpha);
}

if (maskon == 1)
	scrDrawMask(0); // or !(objPlayer.sprite_index = sprPRoll)

if (global.locked == 0)
{
	with (objLockedDoor)
	{
		if (solid == 1)
		{
			draw_sprite_ext(sprArrow, 0, x - 12 + lengthdir_x(3, global.dir * 8), y + 16, 1, 1, 90, c_white, 1);
		}
	}
}

