if (sprite_index == pierretteWalkShield
	|| sprite_index == pierretteAttackShield
// or sprite_index = pierretteReloadShield
|| sprite_index == pierretteBashShield)
{
	sprite_index = pierrettePlantShield;
	image_speed = 0.4;
	image_index = 0;
	sound_ps(sndPickUpGeneric);
}

