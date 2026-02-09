if (image_index < 22)
	image_index += 0.4;
else
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	my_id.sprite_index = sprEDeadMachete;
	my_id.image_speed = 0.2;
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkMachete;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 5;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string((1000)+600*(global.factor))+"pts"
	global.myscore += (1000) + 600 * (global.factor);
	global.killscore += 200;
	global.boldscore += 800 + 600 * global.factor;
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
if (image_index >= 4 && bled == 0)
{
	bled = 1;
	sound_play(choose(sndCut1, sndCut2));
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	repeat (2 + random(3))
	{
		instance_create(x + lengthdir_x(12, image_angle - 3) - 1 + random(2), y + lengthdir_y(12, image_angle - 3) - 1 + random(2), objBloodSquirt);
	}
	repeat (4)
	{
		my_id = instance_create(x + lengthdir_x(12, image_angle - 3) - 1 + random(2), y + lengthdir_y(12, image_angle - 3) - 1 + random(2), objBloodSmoke);
		my_id.direction = random(360);
		my_id.speed = random(3);
		my_id.image_angle = my_id.direction;
	}
	repeat (3)
		instance_create(x + lengthdir_x(13, image_angle), y + lengthdir_y(13, image_angle), objBigBlood);
}

if (image_index >= 11 && bled == 1)
{
	bled = 2;
	sound_play(choose(sndCut1, sndCut2));
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	
	repeat (4 + random(6))
	{
		instance_create(x + lengthdir_x(12, image_angle - 3) - 1 + random(2), y + lengthdir_y(12, image_angle - 3) - 1 + random(2), objBloodSquirt);
	}
	
	repeat (3)
		instance_create(x + lengthdir_x(13, image_angle), y + lengthdir_y(13, image_angle), objBigBlood);
}

if (image_index >= 20 && bled == 2)
{
	bled = 3;
	sound_play(choose(sndCut1, sndCut2));
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	repeat (7)
	{
		my_id = instance_create(x + lengthdir_x(12, image_angle) - 1 + random(2), y + lengthdir_y(12, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 15 + random(5);
	}
	
	// my_id=instance_create(x+lengthdir_x(15,image_angle)-1+random(2),y+lengthdir_y(15,image_angle)-1+random(2),objBodyPart)
	// my_id.direction=image_angle
	// my_id.speed=2
	// my_id.image_angle=image_angle
	global.shake = 10;
	repeat (3)
		instance_create(x + lengthdir_x(13, image_angle), y + lengthdir_y(13, image_angle), objBigBlood);
	my_id = instance_create(x + lengthdir_x(16, image_angle), y + lengthdir_y(16, image_angle), objSeveredHead);
	my_id.direction = image_angle;
	my_id.speed = 2;
	my_id.image_angle = image_angle;
}

