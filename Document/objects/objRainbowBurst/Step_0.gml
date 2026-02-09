if (image_index < 8)
	image_index += 0.25 + random(0.25);
else
{
	instance_destroy();
	my_id = instance_create(x, y, objRainbowPop);
	my_id.speed = speed;
	my_id.direction = direction - 10 + random(20);
	my_id.friction = 0.1;
}
if (round(random(12)) == 2)
{
	my_id = instance_create(x, y, objRainbowPop);
	my_id.speed = speed;
	my_id.direction = direction - 10 + random(20);
	my_id.friction = 0.1;
}

