if (image_index < 8)
	image_index += 0.15;
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
	
	sound_play(sndComplete);
	scrPlaySong(working_directory + "\\Static.mp3");
	instance_create(x, y, objLevelComplete);
	global.done = 1;
	
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
if (image_index >= 6 && bled == 0)
{
	bled = 1;
	hurtindex = 1;
	targetindex = 3;
	sound_play(choose(sndCut1, sndCut2));
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_play(sndPunch);
	global.shake = 11;
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



vdist = point_distance(x, y, room_width / 2, room_height / 2);
vdir = point_direction(room_width / 2, room_height / 2, x, y);
viewspeed = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1;
viewdir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180));
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed, viewdir)) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed, viewdir)) );
__view_set( e__VW.Angle, 0, lengthdir_y(vdist * (1 / 160), vdir * 2) );

