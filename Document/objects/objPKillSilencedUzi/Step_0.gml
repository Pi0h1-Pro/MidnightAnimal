if (image_index >= 10 && dead == 0)
{
	sound_play(sndSilencedSMG);
	
	// sound_play(sndHit1)
	global.shake = 4;
	ammo -= 1;
	shots += 1;
	global.shake = 5;
	repeat (2 + random(3))
	{
		my_id = instance_create(x + lengthdir_x(17, image_angle) - 1 + random(2), y + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt);
		my_id.image_angle = image_angle - 120 + random(240);
	}
	repeat (3)
		instance_create(x + lengthdir_x(17, image_angle), y + lengthdir_y(17, image_angle), objBigBlood);
	targetindex += 3;
	index = targetindex - 2;
	dead = 1;
}

if (ammo > 0 && shots < 3 && image_index >= 11.5)
{
	image_index = 10;
	dead = 0;
}

if (index < targetindex)
	index += 0.5;
if (index == targetindex && dead == 1 && (shots == 3 || ammo == 0))
{
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = bottom;
	my_id.image_index = 9;
	my_id.image_angle = image_angle;
	instance_destroy();
	my_id = instance_create(x, y, objPlayerMouse);
	my_id.sprite_index = sprPWalkSilencedUzi;
	my_id.ammo = ammo;
	
	my_id.maskon = global.maskon;
	my_id.maskindex = global.maskindex;
	global.angle = image_angle - 180;
	my_id.reload = 5;
	with (my_id)
		move_outside_solid(global.angle, 16);
	instance_destroy();
	
	
	// my_id=instance_create(x,y-12,objScore)
	// my_id.text="+"+string((800)+400*(global.factor))+"pts"
	global.myscore += (800) + 400 * (global.factor);
	global.killscore += 800;
	global.boldscore += 400 * global.factor;
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

