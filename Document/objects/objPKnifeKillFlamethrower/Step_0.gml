if (image_index < 7)
	image_index += 0.25;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = bottom;
	my_id.image_index = 13;
	my_id.image_angle = image_angle;
	
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkKnifeFlamethrower;
	my_id.ammo = objPlayer.ammo;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 5;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string((600)+400*(global.factor))+"pts"
	global.myscore += (600) + 400 * (global.factor);
	global.killscore += 600;
	global.boldscore += 400 * global.factor;
	global.combotime = 240;
	global.combo += 1;
	global.killx[global.kills] = x;
	global.killy[global.kills] = y;
	global.kills += 1;
	ds_list_add(global.bonuslist, "Execution");
	if (global.combotime < 12)
		global.combotime = 12;
	exit;
}

if (image_index > 4 && dead == 0)
{
	sound_play(sndHit);
	sound_play(choose(sndCut1, sndCut2));
	repeat (3 + random(2))
	{
		my_id = instance_create(x + lengthdir_x(14, image_angle) - 1 + random(2), y + lengthdir_y(14, image_angle) - 1 + random(2), objBloodSquirt);
		if (round(random(1)))
			my_id.image_angle = image_angle - 110 + random(20);
		else
			my_id.image_angle = image_angle + 110 - random(20);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	dead = 1;
}

