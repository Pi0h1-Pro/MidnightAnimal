if (on > 0 && index < 6)
{
	if (point_distance(other.x, other.y, x + 77, y + 75) < 75)
	{
		with (other)
		{
			scrMeleeBlood(x, y);
			repeat (3)
			{
				scrMeleeBlood(x - 16 + random(32), y - 16 + random(32));
			}
			repeat (5)
			{
				my_id = instance_create(x - 3 + random(6), y - 3 + random(6), objIntestine);
				my_id.direction = point_direction(x, y, my_id.x, my_id.y);
				my_id.speed = 1.5 + random(1.5);
			}
			my_id = instance_create(x, y, objDeadBody);
			my_id.sprite_index = sprEDeadExploded;
			if (object_index == objEnemyFat || object_index == objEnemyFatLSD || object_index == objEnemyFatStatic)
				my_id.sprite_index = sprEFatExploded;
			if (object_get_parent(object_index) == objDogPatrol)
				my_id.sprite_index = sprDogDeadPieces;
			my_id.direction = point_direction(objExplosion.x + 77, objExplosion.y + 75, x, y);
			my_id.image_angle = my_id.direction;
			my_id.speed = 2 + random(1);
			my_id.image_index = random(360);
			instance_destroy();
		}
	}
	else
	{ }
}

