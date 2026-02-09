if (image_index < 10.25)
	image_index += 0.35;
else
{
	myx = x + lengthdir_x(7, image_angle);
	myy = y + lengthdir_y(7, image_angle);
	
	my_id = instance_create(myx, myy, objBloodPool);
	
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprEDeadThroat;
	my_id.image_speed = 0.15;
	my_id.image_angle = image_angle;
	with (my_id)
	{
		dir = image_angle + image_yscale * 12;
		repeat (4)
			my_id = instance_create(x + lengthdir_x(19, dir), y + lengthdir_y(19, dir), objBloodSquirt);
		my_id.image_angle = random(360);
	}
	
	my_id = instance_create(x, y, objPlayer);
	my_id.ammo = ammo;
	my_id.hp += my_id.max_hp;
	
	create_points("THROAT RIPPER +200");
	global.myscore += 200;
	global.combo += 1;
	global.combotime = 240;
	instance_destroy();
}

if (bled == 0 && image_index >= 4)
{
	sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_ps(sndHeadRip);
	bled = 1;
	myx = x + lengthdir_x(8, image_angle);
	myy = y + lengthdir_y(8, image_angle);
	
	sound_ps(sndHitMarker);
	objEffector.hitalpha = 1;
	objEffector.hudflash = 10;
}

