if (image_index < 15)
	image_index += 0.25;
else
{
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprESwordKill;
	my_id.image_index = 3;
	
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkKatanaSpecial;
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
	global.combotime = 600;
	global.combo += 1;
	global.killx[global.kills] = x;
	global.killy[global.kills] = y;
	global.kills += 1;
	ds_list_add(global.bonuslist, "Execution");
	if (global.combotime < 12)
		global.combotime = 12;
	exit;
}
if (image_index >= 5 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	global.shake = 13;
	sound_play(choose(sndCut1, sndCut2));
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_play(sndPunch);
	repeat (4 + random(6))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
}

