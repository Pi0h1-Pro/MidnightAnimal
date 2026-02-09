repeat (5)
{
	shard = instance_create(x, y, objShard);
	shard.direction = random(360);
	shard.image_angle = random(360);
	shard.speed = 2 + random(2);
	shard.friction = 0.15;
}

