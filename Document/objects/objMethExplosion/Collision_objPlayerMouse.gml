if (on == 1 && index < 6)
{
	with (other)
	{
		my_id = instance_create(x, y, objPlayerDead);
		my_id.sprite_index = sprPDeadExploded;
		my_id.image_index = random(4);
		my_id.direction = point_direction(objMethExplosion.x + 77, objMethExplosion.y + 75, x, y);
		my_id.image_angle = my_id.direction;
		my_id.speed = 2 + random(1);
		instance_destroy();
	}
}

