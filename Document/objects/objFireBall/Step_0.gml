if (image_index < sprite_get_number(sprite_index) - 1)
	image_index += indexspeed;
else
	instance_destroy();

if (round(random(7)) == 2)
{
	dir = random(360);
	dist = random(20);
	repeat (5)
	{
		my_id = instance_create(x + lengthdir_x(dist, dir), y + lengthdir_y(dist, dir), objFlameParticle);
		my_id.direction = dir;
		my_id.speed = dist * 0.025 + random(1);
	}
}

