if (image_index == 0)
{
	if (place_meeting(x - 4, y, objPlayer))
	{
		image_index = 1;
		sound_play(sndPickupWeapon);
		my_id = instance_create(x - 4, y, objWeapon);
		my_id.image_index = 6;
		my_id.ammo = 2;
	}
}

