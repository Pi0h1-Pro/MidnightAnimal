if (!instance_exists(objPlayer))
{
	speed = 0;
	exit;
}

scrMoveSolidOn();
if (instance_exists(objPlayer))
{
	if (checkreload > 0)
		checkreload -= 1;
	else
	{
		checkreload = 5;
		check = scrLook(objPlayer.x, objPlayer.y, 4);
		if (check == 0 || check == 2)
		{
			alert = 1;
			speed = 0;
		}
	}
	
	if (alert == 1)
	{
		speed = 0;
		image_speed = 0;
		dist = point_distance(x, y, objPlayer.x, objPlayer.y);
		if (dist < 64)
		{
			dir = point_direction(objPlayer.x, objPlayer.y, x, y);
			direction = dir - 180;
			if (place_free(x + lengthdir_x(1, dir), y) && !scrMeetDoor(x + lengthdir_x(1, dir), y))
				x += lengthdir_x(1, dir);
			if (place_free(x, y + lengthdir_y(1, dir)) && !scrMeetDoor(x, y + lengthdir_y(1, dir)))
				y += lengthdir_y(1, dir);
			image_speed = 0.1;
		}
	}
}

if (alert == 0)
{
	image_speed = speed * 0.1;
	if (!place_free(x + hspeed * 4, y) || scrMeetDoor(x + hspeed * 4, y))
		hspeed = -hspeed;
	if (!place_free(x, y + vspeed * 4) || scrMeetDoor(x, y + vspeed * 4))
		vspeed = -vspeed;
}

scrMoveSolidOff();


if (alert == 1)
{
	direction = scrRotate(direction, point_direction(x, y, objPlayer.x, objPlayer.y), 6);
}
global.my_id = id;
global.test = 0;
with (objPlayer)
{
	if ((sprite_index == sprNicoleAttackCleaver || sprite_index == sprPAttackKnife || sprite_index == sprPAttackMachete || sprite_index == sprPAttackSword || sprite_index == sprPAttackAxe) || (global.maskindex == 2 && sprite_index == sprPAttackPunch) || (global.maskindex == 0 && sprite_index == sprPAttackPunch))
	{
		if (place_meeting(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), global.my_id) || place_meeting(x, y, global.my_id))
			global.test = 1;
	}
}
if (global.test == 1)
{
	pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
	scrMeleeBlood(x, y);
	my_id = instance_create(x, y, objDeadBody);
	my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
	my_id.speed = 1.5;
	my_id.sprite_index = sprEmployeeDead;
	my_id.image_index = floor(random(4));
	my_id.image_angle = my_id.direction;
	if (my_id.image_index < 3)
	{
		piece = instance_create(my_id.x, my_id.y, objBodyPart);
		piece.speed = my_id.speed + 1;
		piece.direction = my_id.direction - 10 + random(20);
		piece.sprite_index = sprEmployeeDeadPiece;
		piece.image_yscale = my_id.image_yscale;
		piece.image_index = my_id.image_index;
	}
	sound_play(choose(sndCut1, sndCut2));
	sound_play(sndHit);
	instance_destroy();
}

