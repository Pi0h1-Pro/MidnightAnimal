if (image_index < 8)
	image_index += 0.35;
else
{
	instance_create(x + lengthdir_x(24, image_angle), y + lengthdir_y(24, image_angle), objBloodPool);
	my_id = instance_create(x, y, objDeadBody);
	my_id.image_angle = image_angle;
	
	my_id.sprite_index = bottom;
	my_id.image_index = 11;
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.ammo = ammo;
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 10;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	
	// my_id = instance_create(x, y - 12, objScore)
	// my_id.text = "+" + string((600) + 400 * (global.factor)) + "pts"
	global.myscore += (300) + 200 * (global.factor);
	global.killscore += 300;
	global.boldscore += 200 * global.factor;
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
if (image_index >= 6.25 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	
	// if instance_exists(objLSD) sound_play(sndLSDSplat) else
	sound_play(choose(sndHit, sndHit2, sndHit3, sndHit1));
	sound_play(sndPunch);
	global.shake = 7;
	repeat (4 + random(6))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	repeat (7)
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objBrains);
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 20 + random(40);
		my_id.speed = 2 + random(2);
	}
	repeat (3)
	{
		my_id = instance_create(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), objBrains2);
		my_id.direction = point_direction(x, y, my_id.x, my_id.y) - 10 + random(20);
		my_id.speed = 1.5 + random(1.5);
		my_id.image_index = random(3);
	}
}

