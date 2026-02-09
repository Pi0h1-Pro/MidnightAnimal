/// @description  Secondary abilities.

// Throw knives.
/* if global.maskindex = 6 and objPlayer.knives > 0 {
    reload = 15
    sprite_index = sprPAttackThrow
    image_speed = 0.5
    knives -= 1

    if sprite_index = sprPAttackThrow {
        my_id = instance_create(x, y, objThrowingKnife)
        global.dir = dir
        with my_id {
            move_contact_solid(global.dir, 12)
        }
        my_id.direction = dir
        my_id.image_angle = dir
        my_id.speed = 24
        sound_play(sndThrow)
    }
}*/

// Create laser sight.
if ((global.maskindex == 7 || global.maskindex == 18) &&
	(objPlayer.sprite_index == sprPWalkSniper || objPlayer.sprite_index == sprPAttackSniper || objPlayer.sprite_index == sprPReloadSniper))
{
	sound_play(sndLaserSight);
	if (!instance_exists(objLaserSight))
		instance_create(x, y, objLaserSight);
	else if (instance_exists(objLaserSight))
		with (objLaserSight)
			instance_destroy();
}

// Dodge roll.
if (global.maskindex == 16)
{
	if (sprite_index == sprPRoll || rollreload > 0)
		nothing = 1;
	else
	{
		weapon = sprite_index;
		sprite_index = sprPRoll;
		rollreload = 20;
		down = 0;
		right = 0;
		if (keyboard_check_direct(ord(global.downkey)))
			down += 1;
		if (keyboard_check_direct(ord(global.upkey)))
			down -= 1;
		if (keyboard_check_direct(ord(global.rightkey)))
			right += 1;
		if (keyboard_check_direct(ord(global.leftkey)))
			right -= 1;
		rolldir = point_direction(x, y, x + right, y + down);
		if (abs(down) < 1 && abs(right) < 1)
			rolldir = round(dir * (1 / 45)) * 45;
		rollx = lengthdir_x(1.5, rolldir);
		rolly = lengthdir_y(1.5, rolldir);
		dir = rolldir;
		image_index = 0;
		active = 0;
		aimon = 0;
		image_speed = 0;
	}
}

/* */
/*  */
