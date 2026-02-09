motion_add(point_direction(x, y, objPlayer.x, objPlayer.y), 0.2);
if (speed > 4)
	speed = 4;
image_angle = direction;

if (point_distance(x, y, objPlayer.x, objPlayer.y) < 22)
{
	// scrCreateBloodWhirl(x, y)
	global.shake = 12;
	repeat (2)
		scrMeleeBlood(x, y);
	scrMeleeBlood(x, y);
	repeat (24)
	{
		my_id = instance_create(x, y, objBrains);
		my_id.direction = random(360);
		my_id.speed = 4 + random(3);
	}
	repeat (16)
	{
		my_id = instance_create(x, y, objIntestine);
		my_id.direction = random(360);
		my_id.speed = 3 + random(2.5);
	}
	repeat (16)
	{
		my_id = instance_create(x, y, objFleshChunk);
		my_id.direction = random(360);
		my_id.speed = 3 + random(2.5);
	}
	my_id = instance_create(x, y, objDeadBody);
	my_id.bled = 1;
	my_id.sprite_index = sprBloodyExploded;
	instance_destroy();
	sound_play(sndPunch);
	sound_play(sndHit);
	sound_play(sndThunder);
	objEffector.whitealpha = 1;
}

if (round(random(1)))
{
	my_id = instance_create(x - 4 + random(8), y - 4 + random(8), objTinyBlood);
	my_id.sprite_index = sprTinyBlood2;
	my_id.image_angle = image_angle;
}

