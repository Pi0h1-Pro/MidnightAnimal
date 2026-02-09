/// @description  Pick up arrows.
if (place_meeting(x, y, other) || place_meeting(x + lengthdir_x(8, image_angle), y + lengthdir_y(8, image_angle), other))
{
	if (scrCurrentWeaponExt(other.sprite_index) == 73)
	{
		with (other)
			ammo += 1;
		sound_ps(sndPickUpGeneric);
		sound_ps(sndPickUpWeapon);
		instance_destroy();
	}
}

