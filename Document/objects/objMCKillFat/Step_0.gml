if (image_index < 12)
{
	if (image_index == 2 && bleed == 0)
	{
		sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
		sound_play(choose(sndCut1, sndCut2));
		global.shake = 8;
		bleed = 1;
		
		if (round(random(3)) == 2)
		{
			my_id = instance_create(x + scrPosDirX(1, 5, image_angle) - 1 + random(2), y + scrPosDirY(2, 5, image_angle) - 1 + random(2), objSplat);
			my_id.image_angle = random(360);
			my_id.direction = image_angle + (-120 + random(60)) * left;
			my_id.speed = 1.5 + random(3);
		}
		
		if (round(random(15)) == 2)
		{
			repeat (3)
			{
				my_id = instance_create(x + lengthdir_x(11, image_angle - 10), y + lengthdir_y(11, image_angle - 10), objBloodSquirt);
				my_id.image_angle = image_angle - 120 + random(60);
			}
		}
		
		if (round(random(3)) == 2)
		{
			my_id = instance_create(x + scrPosDirX(1, 5, image_angle) - 1 + random(2), y + scrPosDirY(2, 5, image_angle) - 1 + random(2), objSmudge);
			my_id.direction = image_angle + (-120 + random(60)) * left;
			my_id.image_angle = my_id.direction;
			my_id.speed = 1.5 + random(3);
		}
	}
	else
	{
		image_index += 0.2;
		if (round(random(20)) == 2)
		{
			repeat (3)
			{
				my_id = instance_create(x + lengthdir_x(11, image_angle - 10), y + lengthdir_y(11, image_angle - 10), objBloodSquirt);
				my_id.image_angle = image_angle - 120 + random(60);
			}
		}
		
		if (round(random(3)) == 2)
		{
			my_id = instance_create(x + scrPosDirX(1, 5, image_angle) - 1 + random(2), y + scrPosDirY(2, 5, image_angle) - 1 + random(2), objSmudge);
			my_id.direction = image_angle + (-120 + random(60)) * left;
			my_id.image_angle = my_id.direction;
			my_id.speed = 1.5 + random(3);
		}
	}
}
else
{
	instance_destroy();
}

if (round(image_index) >= 12 && dead == 0)
{
	dead = 1;
	my_id = instance_create(x + scrPosDirX(9, 5, image_angle), y + scrPosDirY(9, 5, image_angle), objDeadBody);
	my_id.sprite_index = sprEFatDeadCleaver;
	my_id.image_index = 0;
	my_id.image_angle = image_angle;
	my_id.direction = image_angle;
	my_id.speed = 1.5;
	my_id.friction = 0.15;
	my_id.image_yscale = left;
	
	dir = 60;
	blood = instance_create(x, y, objBloodPool);
	blood.image_angle = random(360);
	blood.direction = image_angle;
	
	
	// CREATE PLAYER
	my_id = instance_create(x, y, objPlayerBiker);
	my_id.knives = objPlayerBiker.knives;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 30;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	global.myscore += (400) + 800 * (global.factor);
	global.killscore += 800;
	global.boldscore += 800 * global.factor;
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

