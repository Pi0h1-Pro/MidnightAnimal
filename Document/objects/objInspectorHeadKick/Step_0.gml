if (image_index < 4)
	image_index += 0.1;
else
{
	if (global.maskindex == 4)
		global.factor += 4;
	myx = x + lengthdir_x(5, image_angle);
	myy = y + lengthdir_y(5, image_angle);
	my_id = instance_create(x, y - 12, objScore);
	my_id.text = "+" + string((1200) + 400 * (global.factor)) + "pts";
	global.myscore += (1200) + 400 * (global.factor);
	global.killscore += 1200;
	global.boldscore += 1400 * global.factor;
	global.combotime = 240;
	global.combo += 1;
	global.killx[global.kills] = x;
	global.killy[global.kills] = y;
	global.kills += 1;
	ds_list_add(global.bonuslist, "Execution");
	if (global.combotime < 12)
		global.combotime = 12;
	my_id = instance_create(myx, myy, objBigBlood);
	my_id = instance_create(x, y, objDeadBody);
	my_id.sprite_index = sprInspectorKneed;
	my_id.image_angle = image_angle;
	my_id.direction = image_angle;
	my_id.speed = 3 + random(1);
	my_id.friction = 0.1;
	my_id1 = instance_create(x + lengthdir_x(22, my_id.image_angle), y + lengthdir_x(22, my_id.image_angle), objPoliceHat);
	my_id1.direction = my_id.image_angle - 10 + random(20);
	my_id1.sprite_index = sprInspectorHat;
	my_id1.speed = 1 + random(2);
	global.angle = image_angle - 180;
	if (global.controller == 1)
		my_id = instance_create(x, y, objPlayerController);
	else
		my_id = instance_create(x, y, objPlayerMouse);
	my_id.reload = 30;
	with (my_id)
		move_contact_solid(global.angle, 12);
	instance_destroy();
}

if (bled == 0 && image_index >= 4)
{
	sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	sound_play(sndPunch);
	global.shake = 4;
	bled = 1;
	myx = x + lengthdir_x(8, image_angle);
	myy = y + lengthdir_y(8, image_angle);
	repeat (2)
		scrMeleeBlood(x + lengthdir_x(4, image_angle), y + lengthdir_y(4, image_angle));
	repeat (8)
	{
		dir = random(360);
		my_id = instance_create(myx + lengthdir_x(4, dir), myy + lengthdir_y(4, dir), objSplat);
		my_id.direction = dir;
		my_id.speed = 2 + random(1);
		my_id.friction = 0.1;
	}
}

vdist = point_distance(x, y, room_width / 2, room_height / 2);
vdir = point_direction(room_width / 2, room_height / 2, x, y);
viewspeed = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180)) * 0.1;
viewdir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(vdist * 0.2, vdir - 180), y + lengthdir_y(vdist * 0.2, vdir - 180));
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed, viewdir)) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed, viewdir)) );
__view_set( e__VW.Angle, 0, lengthdir_y(vdist * (1 / 160), vdir * 2) );

