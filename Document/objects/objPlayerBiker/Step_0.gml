scrPlayerMoveKeyboard();


if (room == rmTrainstationDownstairs || room == rmPoliceHQFloor3 || instance_exists(objVan))
	clear = 1;
if (instance_number(objEnemy) + instance_number(objKnockedOut) + instance_number(objECrawl) + instance_number(objMiscEnemy) + instance_number(objBoss) == 0)
{
	test = 1;
	if (test == 1)
	{
		if (clear == 0 && global.done == 0)
		{
			clear = 1;
			my_id = instance_create(x, y, objCheckpoint);
			my_id.text = "FLOOR CLEARED";
		}
	}
}
else
	clear = 0;



global.test = 0;
with (objWeapon)
{
	if (point_distance(x, y, objPlayer.x, objPlayer.y) < 32)
		global.test = 2;
}
if (place_meeting(x, y, objKnockedOut))
	global.test = 1;
objEffector.action = global.test;


// Initiates aiming for shift key.
if (global.xbox == 0)
	aimfar = keyboard_check_direct(vk_shift);
else
	aimfar = trigger_pressed(1); // checkbutton(0, getid(9))
factor = 1;

// Xbox shit.
if (aimfar)
{
	if (global.xbox == 1)
	{
		viewx = objPlayer.x + rightthumb_x(0) * 0.0045;
		viewy = objPlayer.y - rightthumb_y(0) * 0.003;
	}
	else
	{
		viewx = objPlayer.x + ((display_mouse_get_x() - display_get_width() * 0.5) * (__view_get( e__VW.WView, 0 ) / display_get_width())) * factor;
		viewy = objPlayer.y + ((display_mouse_get_y() - display_get_height() * 0.5) * (__view_get( e__VW.HView, 0 ) / display_get_height())) * factor;
	}
	viewspeed = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, viewx, viewy) * 0.1;
	viewdir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, viewx, viewy);
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed, viewdir)) );
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed, viewdir)) );
	vdist = point_distance(x, y, room_width / 2, room_height / 2);
	vdir = point_direction(room_width / 2, room_height / 2, x, y);
	__view_set( e__VW.Angle, 0, lengthdir_y(vdist * (1 / 160), vdir * 2) );
}
else
{
	// Shift aim.
	viewspeed = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24, dir), y + lengthdir_y(24, dir)) * 0.1;
	viewdir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24, dir), y + lengthdir_y(24, dir));
	
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed, viewdir)) );
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed, viewdir)) );
	
	vdist = point_distance(x, y, room_width / 2, room_height / 2);
	vdir = point_direction(room_width / 2, room_height / 2, x, y);
	__view_set( e__VW.Angle, 0, lengthdir_y(vdist * (1 / 160), vdir * 2) );
}

xview = __view_get( e__VW.XView, 0 );
yview = __view_get( e__VW.YView, 0 );
if (persistent == 1 && objEffector.fade == 1)
{
	if (place_free(x + addx, y))
		x += addx;
	if (place_free(x, y + addy))
		y += addy;
	if (image_speed == 0)
		image_index += 0.15;
	legindex += 0.4;
	exit;
}

if (sprite_index == sprNicoleAttackCleaver)
{
	lastx = x;
	lasty = y;
	global.spacex = lengthdir_x(12, dir);
	global.spacey = lengthdir_y(12, dir);
	x += global.spacex;
	y += global.spacey;
	global.my_id = id;
	with (objGlassPanelH)
	{
		if (place_meeting(x, y, global.my_id))
		{
			if (global.my_id.lasty < y + 2)
			{
				add = -1;
			}
			else
			{
				add = 1;
			}
			i = 0;
			repeat (40)
			{
				my_id = instance_create(x + i * 1.5, y, objShard);
				my_id.speed = random(5);
				my_id.direction = add * 90 - 8 + random(16);
				i += 1;
			}
			instance_create(x, y, objGlassPanelHBroken);
			global.shake = 4;
			instance_destroy();
			if (instance_exists(objLSD))
				sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
			else
				sound_play(choose(sndGlass1, sndGlass2));
			sound_play(sndWeaponHit);
		}
	}
	
	with (objGlassPanelV)
	{
		if (place_meeting(x, y, global.my_id))
		{
			if (global.my_id.lastx < x + 2)
			{
				add = -1;
			}
			else
			{
				add = 1;
			}
			i = 0;
			repeat (40)
			{
				my_id = instance_create(x, y + i * 1.5, objShard);
				my_id.speed = random(5);
				my_id.direction = 90 + add * 90 - 8 + random(16);
				i += 1;
			}
			instance_create(x, y, objGlassPanelVBroken);
			global.shake = 4;
			instance_destroy();
			if (instance_exists(objLSD))
				sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
			else
				sound_play(choose(sndGlass1, sndGlass2));
			sound_play(sndWeaponHit);
		}
	}
	
	x += lengthdir_x(12, dir);
	y += lengthdir_y(12, dir);
	
	// Kill fat enemies.
	with (objEnemyFat)
	{
		if (place_meeting(x, y, objPlayer) || place_meeting(x + global.spacex, y + global.spacey, objPlayer))
		{
			mask_index = sprWeaponMask;
			if (scrCollisionLineExt(x, y, objPlayer.lastx, objPlayer.lasty, 4)) // or object_index=objEnemyFat
			{
				mask_index = sprMask;
				objPlayer.x = objPlayer.lastx;
				objPlayer.y = objPlayer.lasty;
				exit;
			}
			mask_index = sprMask;
			global.shake = 7;
			
			edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y);
			my_id = instance_create(x, y, objMCKillFat);
			my_id.direction = edir - 10 + random(20);
			my_id.image_angle = my_id.direction;
			
			// with my_id move_outside_solid(my_id.image_angle-180,16)
			instance_destroy();
			with (objPlayerBiker)
			{
				instance_destroy();
			}
		}
	}
	
	// Kill fat enemies.
	with (objEnemyFatStatic)
	{
		if (place_meeting(x, y, objPlayer) || place_meeting(x + global.spacex, y + global.spacey, objPlayer))
		{
			mask_index = sprWeaponMask;
			if (scrCollisionLineExt(x, y, objPlayer.lastx, objPlayer.lasty, 4)) // or object_index=objEnemyFat
			{
				mask_index = sprMask;
				objPlayer.x = objPlayer.lastx;
				objPlayer.y = objPlayer.lasty;
				exit;
			}
			mask_index = sprMask;
			global.shake = 7;
			
			edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y);
			my_id = instance_create(x, y, objMCKillFat);
			my_id.direction = edir - 10 + random(20);
			my_id.image_angle = my_id.direction;
			
			// with my_id move_outside_solid(my_id.image_angle-180,16)
			instance_destroy();
			with (objPlayerBiker)
			{
				instance_destroy();
			}
		}
	}
	
	with (objEnemy)
	{
		edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y);
		if (place_meeting(x, y, objPlayer) || place_meeting(x + global.spacex, y + global.spacey, objPlayer))
		{
			mask_index = sprWeaponMask;
			if (scrCollisionLineExt(x, y, objPlayer.lastx, objPlayer.lasty, 4)) // or object_index=objEnemyFat
			{
				mask_index = sprMask;
				objPlayer.x = objPlayer.lastx;
				objPlayer.y = objPlayer.lasty;
				exit;
			}
			mask_index = sprMask;
			global.shake = 7;
			my_id = instance_create(x, y - 12, objScore);
			
			if (object_get_parent(object_index) == objEnemyIdle)
			{
				if (room == rmTrainstationEntrance)
					sprite_index = sprEWalkKnife;
				else
					sprite_index = choose(sprEWalkShotgun, sprEWalkM16);
			}
			
			if (sprite_index == sprEWalkUnarmed || sprite_index == sprPoliceWalkUnarmed)
			{
				// my_id.text = "+" + string((100) + 100 * global.factor) + "pts"
				global.myscore += (100) + 100 * global.factor;
				global.boldscore = 100 * global.factor;
				global.killscore += 100;
				global.combo += 1;
				global.combotime = 240;
				global.killx[global.kills] = x;
				global.killy[global.kills] = y;
				global.kills += 1;
			}
			else
			{
				global.myscore += (200) + 200 * global.factor;
				global.killscore += 200;
				global.boldscore += 200 * global.factor;
				global.combo += 1;
				global.combotime = 240;
				global.killx[global.kills] = x;
				global.killy[global.kills] = y;
				global.kills += 1;
				if (global.bonustime < 12 + global.factor * 4)
					global.bonustime = 12 + global.factor * 4;
				if (global.factor == 2)
					ds_list_add(global.bonuslist, "Exposure");
				if (global.factor == 3)
					ds_list_add(global.bonuslist, "Double Exposure");
				if (global.factor == 4)
					ds_list_add(global.bonuslist, "Triple Exposure");
				if (global.factor > 4)
					ds_list_add(global.bonuslist, "Severe Exposure");
			}
			
			
			// BEGIN GORE
			my_id = instance_create(x, y, objDeadBody);
			{
				// DOGS
				if (object_index == objDogPatrol)
				{
					sound_play(choose(sndCut1, sndCut2));
					sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
					my_id.sprite_index = sprDogDeadPieces;
					my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10);
					my_id.speed = 3 + random(1);
					my_id.friction = 0.15;
					death = choose(0, 2);
					my_id.image_index = 0 + death;
					my_id.image_angle = my_id.direction;
					scrMeleeBlood(x, y);
					scrGoreCut(x, y, edir - 180, 1);
					
					// 1 lower
					partdog = instance_create(x, y, objDogPart);
					partdog.sprite_index = sprDogDeadPieces;
					partdog.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10);
					partdog.speed = 1 + random(1);
					partdog.friction = 0.15;
					partdog.image_index = 1 + death;
					partdog.image_angle = my_id.direction;
					scrMeleeBlood(x, y);
					scrGoreCut(x, y, edir - 180, 1);
				} // ENEMIES
				else
				{
					sound_play(choose(sndCut1, sndCut2));
					sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
					if (scrIsGang(object_index))
						my_id.sprite_index = sprEGangBackSlashed;
					else
						my_id.sprite_index = sprEBackSlashed;
					my_id.image_index = floor(random(6));
					my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10);
					my_id.image_angle = my_id.direction;
					
					// DECAPITATION 0
					if (my_id.image_index == 0)
					{
						global.shake = 8;
						scrMeleeBlood(x, y);
						scrGoreCut(x, y, edir - 180, 0);
						
						// HEAD
						part = instance_create(x, y, objSeveredHead);
						part.direction = random(360);
						part.speed = 1 + random(2);
					}
					
					// CUT IN HALF CLEAN 1
					if (my_id.image_index == 1)
					{
						scrMeleeBlood(x, y);
						scrGoreCut(x, y, edir - 180, 1);
						part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart);
						if (scrIsGang(object_index))
							part.sprite_index = sprEGangDeadPieces;
						else
							part.sprite_index = sprEBackSlashedPiece;
						part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10);
						part.speed = 1 + random(1);
						part.friction = 0.15;
						part.image_index = 1;
						part.alarm[0] = 6;
						part.image_angle = part.direction;
					}
					
					// UPPER HALF CUT 2
					if (my_id.image_index == 2)
					{
						scrMeleeBlood(x, y);
						scrGoreCut(x, y, edir - 180, 0);
						part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart);
						if (scrIsGang(object_index))
							part.sprite_index = sprEGangDeadPieces;
						else
							part.sprite_index = sprEBackSlashedPiece;
						part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10);
						part.speed = 1 + random(1);
						part.friction = 0.15;
						part.image_index = 2;
						part.alarm[0] = 6;
						part.image_angle = part.direction;
					}
					
					// CUT IN HALF w. EVISCERATION 3
					if (my_id.image_index == 3)
					{
						scrMeleeBlood(x, y);
						scrGoreCut(x, y, edir - 180, 1);
						part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart);
						if (scrIsGang(object_index))
							part.sprite_index = sprEGangDeadPieces;
						else
							part.sprite_index = sprEBackSlashedPiece;
						part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10);
						part.speed = 1 + random(1);
						part.friction = 0.15;
						part.image_index = 3;
						part.alarm[0] = 6;
						part.image_angle = part.direction;
						
						if (instance_exists(part))
						{
							if (part.sprite_index == sprEGangDeadPieces && part.image_index == 3 && round(random(2)) == 3)
							{
								part.sprite_index = sprEGangHalvedWakeUp;
								part.image_index = 0;
							}
						}
					}
					
					// CUT IN HALF w. SPINE 4
					if (my_id.image_index == 4)
					{
						scrMeleeBlood(x, y);
						scrGoreCut(x, y, edir - 180, 1);
						part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart);
						if (scrIsGang(object_index))
							part.sprite_index = sprEGangDeadPieces;
						else
							part.sprite_index = sprEBackSlashedPiece;
						part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10);
						part.speed = 1 + random(1);
						part.friction = 0.15;
						part.image_index = 4;
						part.alarm[0] = 6;
						part.image_angle = part.direction;
					}
					
					// R. ARM CUT 5
					
					if (my_id.image_index == 5)
					{
						scrMeleeBlood(x, y);
						scrGoreCut(x, y, edir - 180, 0);
						
						// 4 body
						
						// 6 right arm
						part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart);
						if (scrIsGang(object_index))
							part.sprite_index = sprEGangDeadPieces;
						else
							part.sprite_index = sprEBackSlashedPiece;
						part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 45;
						part.speed = 3 + random(1);
						part.friction = 0.15;
						part.image_index = 5;
						
						// part.alarm[0]=6
						part.image_angle = part.direction;
						part.image_yscale = 1;
					}
					
					// L. ARM CUT
					if (my_id.image_index == 6)
					{
						scrMeleeBlood(x, y);
						scrGoreCut(x, y, edir - 180, 0);
						
						// 5 left arm
						part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart);
						if (scrIsGang(object_index))
							part.sprite_index = sprEGangDeadPieces;
						else
							part.sprite_index = sprEBackSlashedPiece;
						part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) + 45;
						part.speed = 3 + random(1);
						part.friction = 0.15;
						part.image_index = 6;
						
						// part.alarm[0]=6
						part.image_angle = part.direction;
						part.image_yscale = 1;
					}
				}
			}
			instance_destroy();
		}
	}
	x = lastx;
	y = lasty;
}

