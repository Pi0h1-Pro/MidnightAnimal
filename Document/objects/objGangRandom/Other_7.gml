update = 0;
if (sprite_index == sprEGangAttack9mm)
{
	sprite_index = sprEGangWalk9mm;
	update = 1;
}
if (sprite_index == sprEGangAttackShotgun)
{
	sprite_index = sprEGangWalkShotgun;
	update = 1;
}
if (sprite_index == sprEGangAttackUzi)
{
	sprite_index = sprEGangWalkUzi;
	update = 1;
}

if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

