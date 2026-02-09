update = 0;
if (sprite_index == sprEAttackHandgun)
{
	sprite_index = sprEWalkHandgun;
	update = 1;
}
if (sprite_index == sprEAttackShotgun)
{
	sprite_index = sprEWalkShotgun;
	update = 1;
}
if (sprite_index == sprEAttackM16)
{
	sprite_index = sprEWalkM16;
	update = 1;
}
if (sprite_index == sprEAttackDoubleBarrel1 || sprite_index == sprEAttackDoubleBarrel2)
{
	sprite_index = sprEWalkDoubleBarrel;
	update = 1;
}
if (sprite_index == sprEAttackAK)
{
	sprite_index = sprEWalkAK;
	update = 1;
}
if (sprite_index == sprEAttackThompson)
{
	sprite_index = sprEWalkThompson;
	update = 1;
}

if (update == 1)
{
	image_speed = 0;
	image_yscale = -image_yscale;
}

if (sprite_index == sprEIdleSmoke)
{
	image_speed = 0;
	alarm[1] = 160;
}

