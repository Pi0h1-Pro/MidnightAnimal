if (sprite_index == pierretteShieldActivate)
{
	sprite_index = pierretteShield;
	image_speed = 0;
	image_index = 0;
	
	// image_index = sprite_get_number(sprite_index) - 1
}

if (sprite_index == pierretteShieldFold)
{
	sprite_index = pierretteShieldFolded;
	image_speed = 0;
	image_index = 0;
}

