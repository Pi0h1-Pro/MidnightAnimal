if (image_index < 8)
	image_index += 0.5;
else
{
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	
	my_id.sprite_index = bottom;
	my_id.image_index = 11;
	
	scrFinishExecution(sprPWalkUnarmed);
}
if (image_index >= 6.25 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1));
	sound_ps(sndBonesBreak);
	sound_ps(sndPunch);
	global.shake = 18;
	instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objHitImpact);
	repeat (4 + random(6))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	repeat (1 + random(2))
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objHeadPiece);
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 20 + random(40);
		my_id.speed = 2 + random(2);
	}
	repeat (1 + random(2))
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), choose(objBrains, objBrainsSmall));
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 10 + random(20);
		my_id.speed = 1.5 + random(1.5);
		my_id.image_index = random(3);
	}
}

