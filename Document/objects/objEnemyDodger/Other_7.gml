update = 0;
if (sprite_index == sprEDodgerAttack)
{
	sprite_index = sprEDodgerWalk;
	update = 1;
}
if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

