update = 0;
if (sprite_index == sprCommandoAttack)
{
	sprite_index = sprCommandoWalk;
	update = 1;
}

if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

