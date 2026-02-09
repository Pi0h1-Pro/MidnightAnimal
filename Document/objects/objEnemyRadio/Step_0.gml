if (!instance_exists(objPlayer))
	exit;

if (scrIsDodging(sprite_index))
{
	if (!place_meeting(x, y, objBullet) && !place_meeting(x, y, objNail) && !place_meeting(x, y, objWeaponThrow))
	{
		if (image_index < 15)
			image_index += 0.25;
		else
		{
			if (object_index == objEnemyRadio)
				sprite_index = sprERadioWalk;
			legindex = 0;
		}
	}
	else
	{
		if (image_index < 3)
			image_index += 0.5;
	}
	exit;
}

angle = direction;

scrRadioStep();

/*
if reload > 0 reload -= 1
else {
    reload = 5
    seen = scrLook(objPlayer.x, objPlayer.y, 6)
    if seen == 0 or seen == 2 {
        speed = 0
        path_end()
        image_angle = point_direction(x, y, objPlayer.x, objPlayer.y)
        sprite_index = sprERadioTalk
        image_speed = 0.25
        legindex = 0
        bangs = 0
        exit
    }
}
*/
if (path_speed > 0)
	image_index += path_speed * 0.125;
else
	image_index += speed * 0.125;
legindex += speed * 0.25;
image_angle = direction;

/*
if point_distance(x, y, point[current].x, point[current].y) < 12 {
    if current < points current += 1
    else current = 0
    scrGoToExactSpeed(path, point[current].x, point[current].y, 0.75)
}
*/

// Roll.
if (sprite_index == sprERadioRoll)
{
	scrMoveGlide(rollx, rolly);
	if (!place_free(x + rollx, y + rolly) && image_index < 12)
		image_index = 12;
	scrMoveSolidOff();
	if (image_index < 16)
		image_index += 0.25;
	else
	{
		sprite_index = weapon;
		active = 1;
		aimon = 1;
		image_index = 0;
	}
	exit;
}
else
{
	if (rollreload > 0)
		rollreload -= 1;
}
previousx = x;
previousy = y;

/* */
/*  */
