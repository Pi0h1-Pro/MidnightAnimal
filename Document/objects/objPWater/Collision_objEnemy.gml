if (scrCantGetHit(object_index))
	exit;
instance_create(x, y, objWaterPuddle);
global.my_id = id;
with (other)
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprEDeadBoiling;
	my_id.image_angle = global.my_id.direction;
	my_id.speed = 1;
	my_id.direction = my_id.image_angle;
	if (!sound_isplaying(sndBoilingWater))
		sound_play(sndBoilingWater);
	
	repeat (2 + random(3))
	{
		my_id = instance_create(x, y, objWaterSplat);
		my_id.direction = random(360);
		my_id.speed = 2 + random(2);
	}
	repeat (2 + random(3))
	{
		my_id = instance_create(x, y, objWaterSmudge);
		my_id.direction = random(360);
		my_id.speed = 3 + random(3);
		my_id.image_angle = my_id.direction;
	}
	repeat (1 + random(2))
	{
		my_id = instance_create(x - 12 + random(24), y - 12 + random(24), objBigWater);
	}
	
	if (sprite_index == sprEWalkUnarmed || sprite_index == sprEGiveUp || sprite_index == sprPoliceWalkUnarmed)
		noweapon = 1;
	else
		noweapon = 0;
	if (noweapon == 0)
	{
		my_id = instance_create(x, y, objWeaponThrow);
		my_id.direction = random(360);
		my_id.speed = 2 + random(1);
		my_id.image_index = scrCurrentWeaponExt(sprite_index);
		my_id.ammo = ammo;
	}
	
	repeat (5)
	{
		my_id = instance_create(x, y, objSteam);
		my_id.direction = random(360);
		my_id.speed = 1 + random(1);
		my_id.image_angle = my_id.direction;
	}
	instance_destroy();
}
instance_destroy();

