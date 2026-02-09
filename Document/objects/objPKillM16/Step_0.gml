if (image_index >= 4 && dead == 0)
{
	sound_play(sndPunch);
	sound_play(sndHit);
	global.shake = 10;
	repeat (4 + random(6))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	targetindex = 3;
	index = 1;
	dead = 1;
}

if (index < targetindex)
	index += 0.25;
if (index == 3)
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = bottom;
	my_id.image_index = 3;
	my_id.image_angle = image_angle;
	instance_destroy();
	my_id = instance_create(x, y, objPlayerMouse);
	if (instance_exists(objLSD))
		my_id.sprite_index = sprPWalkM16LSD;
	else
		my_id.sprite_index = sprPWalkM16;
	my_id.ammo = ammo;
	
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 5;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string((600)+550*(global.factor))+"pts"
	global.myscore += (600) + 650 * (global.factor);
	global.killscore += 600;
	global.boldscore += 550 * global.factor;
	global.combotime = 1200;
	global.combo += 1;
	global.killx[global.kills] = x;
	global.killy[global.kills] = y;
	global.kills += 1;
	ds_list_add(global.bonuslist, "Execution");
	if (global.combotime < 12)
		global.combotime = 12;
	exit;
}

