if (image_index < 13)
	image_index += 0.25;
else
{
	my_id = instance_create(x, y, objDeadBody);
	if (bottom == sprEGangDieChain)
		my_id.sprite_index = sprEGangDieChain;
	my_id.image_index = 13;
	my_id.image_angle = image_angle;
	instance_destroy();
	
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkChain;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 10;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string((600)+500*(global.factor))+"pts"
	global.myscore += (600) + 500 * (global.factor);
	global.killscore += 600;
	global.boldscore += 500 * global.factor;
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

if (image_index > 9 && dead == 0)
{
	sound_play(sndPunch);
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_play(sndDoorHit);
	global.shake = 5;
	
	repeat (2 + random(2))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle + 120 - random(60);
	}
	
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	dead = 1;
}

