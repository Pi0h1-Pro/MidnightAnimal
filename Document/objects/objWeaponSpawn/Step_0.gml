/// @description  Weapon effects.
ammo = scrGetSpecificAmmo(image_index);
if (image_index == 23)
{
	if (round(random(5)) == 2)
		instance_create(x + lengthdir_x(3, image_angle), y + lengthdir_y(3, image_angle), objSteam);
}

