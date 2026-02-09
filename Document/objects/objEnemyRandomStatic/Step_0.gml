scrMoveSolidOn();
with (objDoorV)
{
	test = solid;
	solid = 1;
}
if (!place_free(x + hspeed * 4, y))
	hspeed = -hspeed;
if (!place_free(x, y + vspeed))
	vspeed = -vspeed;
with (objDoorV)
{
	solid = test;
}
scrMoveSolidOff();
if (!instance_exists(objPlayer))
	exit;
if (sprite_index == sprEWalkUzi)
{
	speed = 0;
	image_speed = 0;
	check = scrLook(objPlayer.x, objPlayer.y, 4);
	if (check == 0 || check == 2)
	{
		direction = scrRotate(direction, point_direction(x, y, objPlayer.x, objPlayer.y), 15);
		if (reload > 0)
			reload -= 1;
		else
		{
			if (ammo > 0)
			{
				ammo -= 1;
				global.shake = 3;
				my_id = instance_create(x + lengthdir_x(24, direction), y + lengthdir_y(24, direction), objEBullet);
				my_id.direction = direction - 5 + random(10);
				my_id.speed = 12;
				my_id.image_angle = my_id.direction;
				reload = 2;
				with (objEffector)
					uzisnd = 1;
				
				my_id = instance_create(x + lengthdir_x(16, direction - 4 * image_yscale), y + lengthdir_y(16, direction - 4 * image_yscale), objShell);
				my_id.sprite_index = sprUziShell;
				my_id.direction = direction - 90 * image_yscale - 20 + random(30);
				my_id.image_angle = my_id.direction;
				my_id.speed = (1 + random(3)) * (global.timeMultiplier * global.timeMultiplier);
			}
		}
	}
	exit;
}



if (checkreload > 0)
	checkreload -= 1;
else
{
	checkreload = 30;
	check = scrLook(objPlayer.x, objPlayer.y, 4);
}

