global.my_id = id;
image_xscale = 1.5;
image_yscale = 1.5;
bullets = 0;
energie -= 1 + other.caliber;
with (objBullet)
{
	if (place_meeting(x, y, global.my_id))
	{
		my_id = instance_create(x, y, objBloodPool);
		my_id.direction = direction - 170 + random(10);
		my_id.image_angle = my_id.direction;
		my_id.image_xscale = 0.8 + random(0.2);
		my_id.image_yscale = my_id.image_xscale;
		if (caliber == 0)
			instance_destroy();
		global.my_id.bullets += 1;
	}
}
image_xscale = 1;
image_yscale = 1;
edir = other.direction;
test = 0;
scrMeleeBlood(x, y);


if (bullets > 1 || round(random(1)) || energie < 0)
{
	if (sprite_index == sprEWalkUnarmed)
		noweapon = 1;
	else
		noweapon = 0;
	global.punchonly = 0;
	if (noweapon == 1)
		factor = 0.5;
	else
		factor = 1;
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string(((100+bullets*20)+80*factor)*global.factor)+"pts"
	global.myscore += ((400 + bullets * 20) + 80 * factor) * global.factor;
	global.killscore += (400 + bullets * 20);
	global.boldscore += 600 * factor;
	global.combo += 1;
	global.combotime = 240;
	global.killx[global.kills] = x;
	global.killy[global.kills] = y;
	global.kills += 1;
	global.gunkill += 1;
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprEAutomaticShotgunDead;
	my_id.image_index = 0;
	my_id.direction = edir;
	my_id.speed = 1.5 + random(1) + bullets * 0.15;
	my_id.image_angle = my_id.direction;
	
	
	if (noweapon == 0)
	{
		my_id = instance_create(x, y, objWeaponThrow);
		my_id.image_index = scrCurrentWeaponExt(sprite_index);
		my_id.direction = other.direction - 70 + random(40);
		my_id.speed = 2 + random(2);
		my_id.ammo = ammo;
	}
	instance_destroy();
}

