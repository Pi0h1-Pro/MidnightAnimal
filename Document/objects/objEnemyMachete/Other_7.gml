update = 0;
if (sprite_index == sprEAttackMachete)
{
	sprite_index = sprEWalkMachete;
	update = 1;
}
if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

