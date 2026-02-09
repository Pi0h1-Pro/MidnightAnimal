update = 0;
if (sprite_index == sprEGangAttackChain)
{
	sprite_index = sprEGangWalkChain;
	update = 1;
}
if (sprite_index == sprEGangAttackPipe)
{
	sprite_index = sprEGangWalkPipe;
	update = 1;
}
if (sprite_index == sprEGangAttackBat)
{
	sprite_index = sprEGangWalkBat;
	update = 1;
}
if (sprite_index == sprEGangAttackKnife)
{
	sprite_index = sprEGangWalkKnife;
	update = 1;
}
if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

