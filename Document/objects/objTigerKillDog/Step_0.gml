if (image_index >= 10 && dead == 0)
{
	sound_play(sndPunch);
	sound_play(sndHit);
	global.shake = 5;
	repeat (2 + random(1))
	{
		my_id = instance_create(x + scrPosDirX(21, -3, image_angle) - 1 + random(2), y + scrPosDirY(21, -3, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + scrPosDirX(21, -3, image_angle) - 1 + random(2), y + scrPosDirY(21, -3, image_angle) - 1 + random(2), objBigBlood);
	dead = 1;
}

if (image_index < 17)
	image_index += 0.3;
else
{
	my_id = instance_create(x + scrPosDirX(9, 5, image_angle), y + scrPosDirY(9, 5, image_angle), objDeadBody);
	my_id.sprite_index = sprDogDeadBlunt;
	my_id.image_index = 2;
	my_id.image_angle = image_angle;
	
	// Create player.
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkUnarmed;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 10;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	// Create score.
	// my_id = instance_create(x, y - 12, objScore)
	// my_id.text = "+" + string((600) + 500 * (global.factor)) + "pts"
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
	instance_destroy();
}

