// Xbox controls.
if (global.xbox == 1)
{
	scrXboxPlayerMouse();
	if (button_pressed(5))
		event_perform(ev_keypress, ord("F"));
}

if (muzzle > 0)
	muzzle -= 3;
else
	muzzle = 0;

// Flashlight.
if (flashlight == 1 && spot == 0)
{
	my_id = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objDLCSpotlight);
	if (instance_exists(my_id))
	{
		my_id.direction = dir;
		my_id.image_angle = my_id.direction;
	}
	spot = 1;
}
walkdir += 2;
scrPlayerSpecialCamera();

// Light.
/* if instance_exists(objPlayer) and surface_exists(global._lsys_surface) {
    lsys_light_set_position(l, objPlayer.x, objPlayer.y);
    lsys_update(alpha);
}*/


// Start with silencer.
if (sprite_index == sprPCockGun)
{
	if (wait > 0)
		wait -= 1;
	else
	{
		if (image_index < 25)
		{
			if (image_index == 15)
				sound_ps(sndReload2);
			image_index += 0.3;
		}
		else
		{
			sprite_index = sprPWalkSilencer;
			image_index = 0;
			ammo = 17;
			active = 1;
			aimon = 1;
			
			// scrSaveFloor()
		}
	}
	exit;
}

// Open locked door.
if (sprite_index == sprPKeyLockOpen)
{
	if (image_index < 4)
		image_index += 0.2;
	else
	{
		active = 1;
		with (objLockedDoor)
			image_index = 1;
		sprite_index = sprPWalkUnarmed;
	}
	exit;
}

scrPlayerMoveKeyboard();
scrPlayerKill();
scrAimFurther();
scrTurnAround();
scrLevelClear();

// if mags > 0
scrReload();

// Reload weapons.
if (ammo == 0)
{
	if (sprite_index == sprPWalkSilencedShotgun)
	{
		sprite_index = sprPReloadSilencedShotgun;
		image_index = 0;
		image_speed = 0;
	}
	if (sprite_index == sprPWalkSniper)
	{
		sprite_index = sprPReloadSniper;
		image_index = 0;
		image_speed = 0;
	}
	if (sprite_index == sprPWalkSuppressedMG)
	{
		sprite_index = sprPReloadSuppressedMG;
		image_index = 0;
		image_speed = 0;
	}
}

// Reload dual wield.
// if (ammo = 0 or keyboard_check_pressed(ord('F'))) and (sprite_index = sprPWalkDW or sprite_index = sprPTurnDW) {
if (ammo == 0 && (sprite_index == sprPWalkDW || sprite_index == sprPTurnDW))
{
	if (mags > 0)
	{
		sprite_index = sprPReloadDW;
		image_index = 0;
		image_speed = 0;
	}
	else
	{
		sprite_index = sprPWalkUnarmed;
		image_index = 0;
		image_speed = 0;
		
		// Drop weapons when magazine is depleted.
		my_id = instance_create(x, y, objBeretta);
		my_id.direction = -45 - random(13);
		my_id.speed = 2;
		
		my_id = instance_create(x, y, objBeretta);
		my_id.direction = 45 + random(13);
		my_id.speed = 2;
		
		sound_ps(sndReload4);
	}
}

if (sprite_index == sprPReloadDW)
{
	if (image_index == 3)
	{
		my_id = instance_create(x + lengthdir_x(8, dir + 90 * left) + lengthdir_x(5, dir), y + lengthdir_y(8, dir + 90 * left) + lengthdir_y(5, dir), objGunClip);
		my_id.image_index = 2;
		my_id.speed = 3.5;
		my_id.direction = dir + 90 * left - 20 + random(40);
	}
	
	if (image_index == 4)
	{
		my_id = instance_create(x + lengthdir_x(8, dir + 270 * left) + lengthdir_x(5, dir), y + lengthdir_y(8, dir + 270 * left) + lengthdir_y(5, dir), objGunClip);
		my_id.image_index = 2;
		my_id.speed = 3.5;
		my_id.direction = dir + 270 * left - 20 + random(40);
	}
	if (image_index < 16)
		image_index += 0.5;
	else
	{
		mags -= 1;
		sprite_index = sprPWalkDW;
	}
	if (image_index > 10 && ammo == 0)
	{
		sound_ps(sndReload4);
		ammo = 32;
		sound_play(sndRecharge);
	}
	if (image_index > 13 && ammo == 32)
	{
		sound_ps(sndReload4);
		ammo = 64;
		sound_play(sndRecharge);
	}
}

// Draw steam for boiling pot.
if (sprite_index == sprPWalkBoilingPot)
{
	if (round(random(5)) == 2)
		instance_create(x + lengthdir_x(11, dir - 33 * left), y + lengthdir_y(11, dir - 33 * left), objSteam);
}


// Break glass with nonlethal attacks.
if (sprite_index == sprPAttackPunch || sprite_index == sprPAttackUnarmed1 || sprite_index == sprPAttackDrill)
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
			SteamIncStat("Windows", 1);
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
			global.shake = 2;
			instance_destroy();
			if (instance_exists(objLSD))
				sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
			else
				sound_play(choose(sndGlass1, sndGlass2));
		}
	}
	
	with (objGlassPanelV)
	{
		if (place_meeting(x, y, global.my_id))
		{
			SteamIncStat("Windows", 1);
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
			global.shake = 2;
			instance_destroy();
			if (instance_exists(objLSD))
				sound_play(choose(sndGlassBreakLSD, sndGlassReverse));
			else
				sound_play(choose(sndGlass1, sndGlass2));
		}
	}
	
	x += lengthdir_x(12, dir);
	y += lengthdir_y(12, dir);
	
	with (objEnemy)
	{
		if (scrCantGetHit(object_index))
			valid = 0;
		else
			valid = 1;
		
		if ((place_meeting(x, y, objPlayer) || place_meeting(x + global.spacex, y + global.spacey, objPlayer)) && valid == 1)
		{
			mask_index = sprWeaponMask;
			
			// if scrCollisionLineExt(x,y,objPlayer.lastx,objPlayer.lasty,4,objSolid,objDoorV,objWallSoftH) {scrMoveSolidOff() mask_index=sprMask objPlayer.x=objPlayer.lastx objPlayer.y=objPlayer.lasty exit}
			mask_index = sprMask;
			edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y);
			sound_ps(sndDoorHit);
			global.shake = 3;
			my_id = instance_create(x, y, objKnockedOut);
			my_id.type = object_index;
			
			if (scrIsPolice(object_index))
				my_id.sprite_index = sprPoliceGetUp;
			my_id.direction = edir - 10 + random(20);
			my_id.angle = my_id.direction;
			with (my_id)
				move_outside_solid(angle - 180, 16);
			my_id.speed = 3;
			scrIdleGetEnemy();
			
			
			if (scrIsGang(object_index))
				my_id.sprite_index = sprEGangGetUp;
			my_id.direction = edir - 10 + random(20);
			my_id.angle = my_id.direction;
			with (my_id)
				move_outside_solid(angle - 180, 16);
			my_id.speed = 3;
			scrIdleGetEnemy();
			
			if (sprite_index == sprEWalkUnarmed || sprite_index == sprPoliceWalkUnarmed || sprite_index == sprEGangWalkUnarmed)
				noweapon = 1;
			else
				noweapon = 0;
			if (noweapon == 0)
			{
				global.test = 0;
				with (objEnemy)
					if (alert == 1)
						global.test += 1;
				
				// my_id = instance_create(x, y - 12, objScore)
				// my_id.text = "+" + string(200 + 400 * global.factor) + "pts"
				global.myscore += 200 + 400 * global.factor;
				global.boldscore += 200 + 400 * global.factor;
				global.combotime += 240;
				global.killx[global.kills] = x;
				global.killy[global.kills] = y;
				global.kills += 1;
				my_id = instance_create(x, y, objWeaponThrow);
				my_id.direction = direction - 70 + random(40);
				my_id.image_index = scrCurrentWeaponExt(sprite_index);
				my_id.speed = 2 + random(2);
				my_id.ammo = ammo;
			}
			instance_destroy();
		}
	}
	x = lastx;
	y = lasty;
}

// Roll.
if (sprite_index == sprPRoll)
{
	global.maskon = 0;
	scrMoveSolidOn();
	scrUpdateMaskPos(sprite_index);
	scrMoveGlide(rollx, rolly);
	scrCameraPan(x, y);
	scrCameraPan(x, y);
	if (!place_free(x + rollx, y + rolly) && image_index < 12)
		image_index = 12;
	if (!keyboard_check(ord("F")))
	{
		if (image_index < 12 && image_index > 4)
			image_index = 12;
	}
	scrMoveSolidOff();
	if (image_index < 16)
		image_index += 0.25;
	else
	{
		sprite_index = weapon;
		active = 1;
		aimon = 1;
		image_index = 0;
		global.maskon = 0;
		global.maskindex = maskindex;
	}
	exit;
}
else
{
	if (rollreload > 0)
		rollreload -= 1;
}

previousx = x;
previousy = y;

scrEnterRage();

// Infinite reload ability for Parker.
if (global.maskindex == 8 &&
	(objPlayer.sprite_index == sprPWalkSilencer
	|| objPlayer.sprite_index == sprPWalkHandgun
	|| objPlayer.sprite_index == sprPWalkM16
	|| objPlayer.sprite_index == sprPWalkAK
	|| objPlayer.sprite_index == sprPWalkShotgun
	|| objPlayer.sprite_index == sprPWalkDoubleBarrel
	|| objPlayer.sprite_index == sprPWalkScorpion
	|| objPlayer.sprite_index == sprPWalkMP5
	|| objPlayer.sprite_index == sprPWalkUzi
	|| objPlayer.sprite_index == sprPWalkP90
	|| objPlayer.sprite_index == sprPWalkAutoShotgun
	|| objPlayer.sprite_index == sprPWalkHuntingRifle
	|| objPlayer.sprite_index == sprPWalkSilencedUzi
	|| objPlayer.sprite_index == sprPWalkThompson
	|| objPlayer.sprite_index == sprPAttackSilencer
	|| objPlayer.sprite_index == sprPAttackHandgun
	|| objPlayer.sprite_index == sprPAttackM16
	|| objPlayer.sprite_index == sprPAttackAK
	|| objPlayer.sprite_index == sprPAttackHuntingRifle
	|| objPlayer.sprite_index == sprPAttackShotgun
	|| objPlayer.sprite_index == sprPAttackDoubleBarrel1
	|| objPlayer.sprite_index == sprPAttackDoubleBarrel2
	|| objPlayer.sprite_index == sprPAttackScorpion
	|| objPlayer.sprite_index == sprPAttackMP5
	|| objPlayer.sprite_index == sprPAttackThompson
	|| objPlayer.sprite_index == sprPAttackUzi
	|| objPlayer.sprite_index == sprPAttackP90
	|| objPlayer.sprite_index == sprPAttackSilencedUzi
	|| objPlayer.sprite_index == sprPAttackAutoShotgun))
{
	weapon = instance_nearest(x, y, objWeapon);
	if (instance_exists(weapon))
	{
		if (scrIsGun(weapon.image_index))
		{
			if (weapon.ammo > 0)
			{
				if (point_distance(x, y, weapon.x, weapon.y) < 24)
				{
					ammo += weapon.ammo;
					with (weapon)
						instance_destroy();
					sound_play(sndPickupWeapon);
				}
			}
		}
	}
}

// If using dual wield, turn all the dodgers into fat enemies/dogs.
if (global.maskindex == 6)
{
	with (objEnemyDodger)
	{
		instance_create(x, y, objEnemyFatStatic);
		instance_destroy();
	}
	
	with (objCommando)
	{
		instance_create(x, y, objDogPatrol);
		instance_destroy();
	}
}

// If Tony, delete all crouching enemies.
if (global.maskindex == 2)
{
	with (objEHideM16)
	{
		instance_destroy();
	}
}

/* */
/*  */
