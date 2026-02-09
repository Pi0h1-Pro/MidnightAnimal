/// @description  Get up.
if (sprite_index == sprEGetUp || sprite_index == sprEGetUpLean)
{
	my_id = instance_create(x, y, enemyRandom);
	my_id.sprite_index = scrChooseGun();
	my_id.ammo = scrGetAmmoEnemy(sprite_index);
	my_id.direction = image_angle;
	my_id.image_angle = my_id.direction;
	my_id.startx = startx;
	my_id.starty = starty;
	my_id.alert = 1;
}

with (my_id)
{
	scrMoveSolidOn();
	if (!scrPlaceFree(x, y))
	{
		x = startx;
		y = starty;
	}
	scrMoveSolidOff();
}

instance_destroy();

