if (index < targetindex)
	index += 0.2;
if (image_index > 0)
{
	if (image_index < 8)
		image_index += 0.2;
	else
	{
		if (targetindex < 25)
			image_index = 0;
		else
		{
			my_id = instance_create(myx, myy, objBloodPool);
			my_id = instance_create(x, y, objDeadBody);
			my_id.sprite_index = sprPoliceBluntKill;
			my_id.image_index = 25;
			my_id.image_angle = image_angle;
			instance_destroy();
			
			my_id = instance_create(x, y, objPlayerMouse);
			if (sprite_index == sprPNightStickKill)
				my_id.sprite_index = sprPWalkNightStick;
			
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
		}
	}
	if (image_index >= 5 && image_index - 0.2 < 5)
	{
		sound_play(sndHit);
		sound_play(sndPunch);
		global.shake = 5;
		myx = x + lengthdir_x(20, image_angle);
		myy = y + lengthdir_y(20, image_angle);
		if (targetindex > 18)
		{
			repeat (2 + random(3))
			{
				my_id = instance_create(x + lengthdir_x(22, image_angle) - 1 + random(2), y + lengthdir_y(22, image_angle) - 1 + random(2), objBloodSquirt);
				my_id.image_angle = image_angle + 120 - random(60);
				my_id.depth = 3;
			}
		}
		if (targetindex > 16)
		{
			repeat (2)
				instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
		}
	}
}

