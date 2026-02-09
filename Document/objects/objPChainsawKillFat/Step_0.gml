if (image_index < 24)
{
	if (image_index < 12)
	{
		global.shake = 8;
		if (round(random(3)) == 2)
		{
			my_id = instance_create(x + scrPosDirX(2, 5, image_angle) - 1 + random(2), y + scrPosDirY(2, 5, image_angle) - 1 + random(2), objSplat);
			my_id.image_angle = random(360);
			my_id.direction = image_angle + (-120 + random(60)) * left;
			my_id.speed = 1.5 + random(3);
		}
		if (round(random(3)) == 2)
		{
			my_id = instance_create(x + scrPosDirX(2, 5, image_angle) - 1 + random(2), y + scrPosDirY(2, 5, image_angle) - 1 + random(2), objSmudge);
			my_id.direction = image_angle + (-120 + random(60)) * left;
			my_id.image_angle = my_id.direction;
			my_id.speed = 1.5 + random(3);
		}
		if (round(random(12)) == 2)
		{
			my_id = instance_create(x + scrPosDirX(2, 5, image_angle) - 1 + random(2), y + scrPosDirY(2, 5, image_angle) - 1 + random(2), objIntestine);
			my_id.direction = image_angle + (-120 + random(60)) * left;
			my_id.image_angle = my_id.direction;
			my_id.speed = 1.5 + random(3);
		}
	}
	else
	{
		if (!sound_isplaying(sndChainsawExecution2))
			sound_stop(sndChainsawExecution2);
	}
	image_index += 0.2;
}
else
{
	instance_destroy();
}

if (round(image_index) >= 19 && dead == 0)
{
	dead = 1;
	my_id = instance_create(x + scrPosDirX(9, 5, image_angle), y + scrPosDirY(9, 5, image_angle), objDeadBody);
	my_id.sprite_index = sprEFatDeadChainsaw;
	my_id.image_index = choose(0, 1, 2);
	my_id.image_angle = image_angle;
	my_id.direction = image_angle;
	my_id.speed = 1.5;
	my_id.friction = 0.15;
	my_id.image_yscale = left;
	
	// CREATE PLAYER
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkChainsaw;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 5;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string((1000)+400*(global.factor))+"pts"
	global.myscore += (1000) + 400 * (global.factor);
	global.killscore += 800;
	global.boldscore += 600 * global.factor;
	global.combotime = 480;
	global.combo += 1;
	global.killx[global.kills] = x;
	global.killy[global.kills] = y;
	global.kills += 1;
	ds_list_add(global.bonuslist, "Execution");
	if (global.combotime < 12)
		global.combotime = 12;
	exit;
}

