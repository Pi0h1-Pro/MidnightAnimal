image_speed = 0;
index = 0;
image_angle = random(360);

repeat (30)
{
	my_id = instance_create(x, y, objFlameParticle);
	my_id.direction = random(360);
	my_id.speed = 2 + random(3);
	my_id.friction = 0.15;
}
repeat (3)
{
	my_id = instance_create(x - 8 + random(16), y - 8 + random(16), objFireBall);
	my_id.direction = random(360);
	my_id.speed = 1 + random(1);
}
repeat (2)
{
	my_id = instance_create(x - 8 + random(16), y - 8 + random(16), objFlameSmoke);
	my_id.direction = random(360);
	my_id.speed = 0.5 + random(1);
}

