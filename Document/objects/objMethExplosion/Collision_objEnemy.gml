if (on > 0 && index < 6)
{
	if (point_distance(other.x, other.y, x + 77, y + 75) < 75)
	{
		with (other)
		{
			repeat (24)
			{
				my_id = instance_create(x - 3 + random(6), y - 3 + random(6), objBloodDrop);
				my_id.image_xscale = 1 - random(0.2);
				my_id.image_yscale = my_id.image_xscale;
				my_id.image_angle = point_direction(x, y, my_id.x, my_id.y);
				my_id.sprite_index = sprBloodSplatSmall;
				my_id.direction = my_id.image_angle;
				my_id.speed = 2 + random(4);
			}
			
			repeat (5)
			{
				my_id = instance_create(x - 3 + random(6), y - 3 + random(6), objIntestine);
				my_id.direction = point_direction(x, y, my_id.x, my_id.y);
				my_id.speed = 1.5 + random(1.5);
			}
			
			scrMeleeBlood(x, y);
			my_id = instance_create(x, y, objDeadBody);
			my_id.sprite_index = choose(sprEDeadExploded, sprExplodedBody1, sprExplodedBody2);
			if (object_index == objEnemyFat || object_index == objEnemyFatLSD || object_index == objEnemyFatStatic)
				my_id.sprite_index = sprEFatExploded;
			if (object_index == objEnemyIdle)
				my_id.sprite_index = choose(sprEDeadExploded, sprExplodedBody1, sprExplodedBody2);
			if (object_get_parent(object_index) == objDogPatrol)
				my_id.sprite_index = sprDogExploded;
			my_id.direction = point_direction(objMethExplosion.x + 77, objMethExplosion.y + 75, x, y);
			my_id.image_angle = my_id.direction;
			my_id.speed = 2 + random(1);
			my_id.image_index = random(4);
			instance_destroy();
		}
	}
}

