update = 0;
if (sprite_index == sprEFatDieLSD)
{
	my_id.sprite_index = sprBloodyExploded;
	my_id.bled = 1;
	scrMeleeBlood(x, y);
	scrMeleeBlood(x, y);
	repeat (20)
	{
		my_id = instance_create(x + 16 - random(32), y + 16 - random(32), choose(objFleshChunk, objIntestine));
		my_id.direction = point_direction(x, y, my_id.x, my_id.y);
		my_id.speed = 2 + random(3);
		my_id.friction = 0.15;
	}
	sound_play(sndLSDSplat);
	global.shake = 8;
	exit;
}

if (sprite_index == sprEFatAttackLSD)
{
	sprite_index = sprEFatWalkLSD;
	update = 1;
}

if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

