if (image_index >= 10 && dead == 0)
{
	sound_ps(sndP90);
	sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1));
	global.shake = 4;
	ammo -= 1;
	if (shots == 0)
		scrHearPlayer();
	shots += 1;
	global.shake = 5;
	repeat (2 + random(3))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
		
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBrains);
		my_id.image_angle = image_angle + 120 - random(240);
		my_id.speed = 2 + random(2);
		my_id.friction = 0.15;
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	targetindex += 3;
	index = targetindex - 2;
	dead = 1;
}

if (ammo > 0 && shots < 3 && image_index >= 11.5)
{
	image_index = 10;
	dead = 0;
}

if (index < targetindex)
	index += 0.5;
if (index == targetindex && dead == 1 && (shots == 3 || ammo == 0))
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = bottom;
	my_id.image_index = 9;
	my_id.image_angle = image_angle;
	instance_destroy();
	scrFinishExecution(sprPWalkP90);
}

