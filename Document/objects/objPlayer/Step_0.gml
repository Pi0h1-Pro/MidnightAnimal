/// @description  DEBUG: CHANGE CHARACTER
if (keyboard_check_pressed(ord("0")))
{
	global.character = 0;
	sprite_index = sprPWalkUnarmed;
}
if (keyboard_check_pressed(ord("1")))
{
	global.character = 1;
	sprite_index = thomasWalk;
}
if (keyboard_check_pressed(ord("2")))
{
	global.character = 2;
	sprite_index = pierretteWalkUnarmed;
}
if (keyboard_check_pressed(ord("3")))
{
	global.character = 3;
	sprite_index = simoneWalk;
	ammo = 6;
}

if (global.character == 2)
{
	if (keyboard_check_pressed(ord("J")))
	{
		sprite_index = pierretteWalkShotgun;
		ammo = 144;
	}
	
	if (keyboard_check_pressed(ord("K")))
	{
		sprite_index = pierretteWalkSMG;
		ammo = 32;
	}
}

/// FSM: Execute state.
try {
state_execute();
}
catch (_e) {
    // do nothing
}

/// Player behaviour.

// Regulate muzzle flash.
if (muzzle > 0)
	muzzle -= 3;
else
	muzzle = 0;

// State holder.
global.state = 0;

// Normalise health display.
hp_norm = (hp / max_hp) * 100;
if (hp < 0)
	hp = 0;
if (hp > max_hp)
	hp = max_hp;

// COMBAT //
if (global.active == 1)
{
	// General attacks.
	scrPlayerKill();
	
	// scrPlayerAttackUnarmed()
	
	// Fire certain guns one-handed.
	scrPlayerFlipGun();
	
	// Reloading weapons.
	scrPlayerReload();
	
	// Camera control.
	scrPlayerAim();
	
	// Disarm weapons.
	scrPlayerDisarm();
	
	// Animate player states.
	scrPlayerAnimate();
}

// Advance leg movement.
walkdir += 2;

// Drop weapon if level is complete.
if (global.done == 1)
	scrPlayerFinishLevel();

// Fade screen out based on player's health.
global.var_greyscale_fade = 0.5 / (hp / max_hp);
if (global.var_greyscale_fade < 0.1)
	global.var_greyscale_fade = 0.1;
if (global.var_greyscale_fade > 1)
	global.var_greyscale_fade = 1;

// Hide player in vegetation.
if (place_meeting(x, y, objVegetation))
	global.dist_detection = 10;
else
	global.dist_detection = 320;

// Cover states for Pierrette .
if (global.character == 2)
{
	if (instance_exists(maskShield))
	{
		if (pierretteIsShielded(sprite_index))
			maskShield.cover = true;
		else
			maskShield.cover = false;
	}
	
	// Shield benefits.
	if (pierretteHasShield(sprite_index))
	{
		if (hp < max_hp)
			hp += 0.75;
	}
}

// Idle animations.
scrPlayerIdleStates();

previousx = x;
previousy = y;

/// Controller input.
if (gamepad_is_connected(0))
{
	// Movement.
	scrControllerMove();
	
	// X / square to reload.
	if (gamepad_button_check_pressed(0, gp_face3))
		scrGetPlayerReload();
	
	// A / X to execute.
	if (gamepad_button_check_pressed(0, gp_face1))
		scrPlayerExecute();
	
	// LT / L2 to lock onto enemies.
	if (gamepad_button_check_pressed(0, gp_shoulderlb))
		scrLockOn();
	
	// LB / L1 to dash.
	if (gamepad_button_check(0, gp_shoulderl))
	{
		if (state_name == "Default")
		{
			if ((abs(myxspeed) + abs(myyspeed)) != 0)
			{
				sound_ps(sndDash);
				state_switch("Dash");
			}
		}
	}
	
	// RT / R2 to fire.
	if (gamepad_button_check_pressed(0, gp_shoulderrb))
	{
		/// Semi-automatic / melee weapons.
		if (scrIsDisarming() || reload > 0 || teleport == true)
			exit;
		
		// Melee weapons.
		scrPlayerAttackMelee();
		
		// Firearms.
		if (ammo > 0 && !scrIsReloading(sprite_index))
		{
			scrPlayerShootSemi();
			scrPlayerCreateBurstFire();
			image_angle = 0;
		}
	}
	
	if (gamepad_button_check(0, gp_shoulderrb))
	{
		if (active == 1)
			scrPlayerAttackAuto();
	}
	
	// RB / R1 to pick up / throw weapons.
	if (gamepad_button_check_pressed(0, gp_shoulderr))
	{
		if (scrIsDisarming())
			exit;
		if (sprite_index == sprPWalkDW
			|| sprite_index == sprPReloadDW
			|| sprite_index == sprPTurnDW)
			exit;
		if (global.active == 0)
			exit;
		
		// Disarm weapons; otherwise, pick them up.
		if (global.character == 0)
			scrPlayerPickUpWeapon();
		if (global.character == 1)
			scrPlayerPickUpNonlethal();
	}
	
	// Set vibration.
	gamepad_set_vibration(0, global.shake / 15, global.shake / 15);
}

/// Lock on.
if (mouse_check_button_pressed(mb_right) && lockon == 0
	&& global.character != 1 && global.character != 2 && global.character != 3)
{
	scrLockOn();
	lockon = 1;
}
else if (mouse_check_button_released(mb_right) && lockon == 1
	&& global.character != 1 && global.character != 2 && global.character != 3)
{
	global.enemy = -1234;
	lockon = 0;
}

// PIERRETTE
if (global.character == 2)
{
	if (mouse_check_button_pressed(mb_right))
	{
		if (sprite_index == pierretteWalkShield)
			sprite_index = pierretteAimShield;
		if (instance_exists(maskShield))
			maskShield.cover = false;
	}
	else if (mouse_check_button_released(mb_right))
	{
		if (sprite_index == pierretteAimShield)
			sprite_index = pierretteWalkShield;
		if (instance_exists(maskShield))
			maskShield.cover = true;
	}
}

// SIMONE
if (global.character == 3)
{
	if (mouse_check_button_pressed(mb_right))
	{
		if (sprite_index == simoneWalk)
		{
			sprite_index = simoneAim;
			image_index = 0;
			image_speed = 0.5;
		}
	}
	else if (mouse_check_button_released(mb_right))
	{
		if (sprite_index == simoneAim)
			sprite_index = simoneWalk;
	}
}

///

/// ABILITY : Blink.

if (global.active == 0)
	exit;
if (global.character != 0)
	exit;

// Check to see if we can teleport.
if (keyboard_check(ord("F")))
	teleport = true;
else
	teleport = false;

if (teleporting == true)
{
	if (teleport_fade == true)
	{
		// If visible, decrease alpha.
		if (image_alpha > 0)
			image_alpha -= 0.1;
		else
		{
			// If invisible, move to new x and y.
			randomize();
			x = xx;
			y = yy;
			image_angle = dir;
			
			// Fade out phase is complete.
			teleport_fade = false;
		}
	}
	else
	{
		// If not yet fully opaque, increase alpha.
		if (image_alpha < 1)
			image_alpha += 0.1;
		else
		{
			// If fully opaque, fade in sequence and teleportation complete.
			teleporting = false;
			teleport_fade = true;
		}
	}
}

/// ABILITY : Charge attacks.

if (global.active == 0)
	exit;

// Charged pistol.
if (sprite_index == sprPWalkCharger)
{
	// if mouse_check_button_pressed(mb_left) sound_ps(sndFMG9)
	
	if (mouse_check_button(mb_left))
	{
		global.shake++;
		
		if (global.shake > 18)
			global.shake = 18;
		global.charge_counter++;
	}
	
	if (global.charge_counter >= global.max_charge && charged == 0)
	{
		sound_ps(sndRecharge);
		charged = 1;
	}
	
	if (mouse_check_button_released(mb_left))
	{
		if (global.charge_counter > global.max_charge)
		{
			sound_ps(sndIntervention);
			ammo -= 1;
			reload = 7;
			global.shake = 15;
			repeat (2)
			{
				my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objRicochetingShot);
				if (instance_exists(my_id))
				{
					my_id.direction = dir - 4 + random(8);
					my_id.speed = 24;
					my_id.image_angle = my_id.direction;
					scrCreateMuzzleFlash(26);
				}
			}
			my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell);
			my_id.sprite_index = sprShotgunShell;
			my_id.image_angle = dir;
			my_id.direction = dir - 90 * left - 20 + random(30);
			my_id.speed = (1 + random(3));
			sound_ps(choose(snd12GA1, snd12GA2, snd12GA3));
			sprite_index = sprPAttackChargerCharged;
			image_speed = 0.6;
			image_index = 0;
		}
		global.charge_counter = 0;
		charged = 0;
	}
}

// Leviathan swords.
if (scrCurrentWeaponExt(sprite_index) == 80)
{
	if (mouse_check_button(mb_right))
		global.charge_counter++;
	
	
	if (global.charge_counter >= 10 && charged == 0)
	{
		instance_create(x, y, objPsychicCharged);
		sound_ps(sndLeviathanCharged);
		charged = 1;
	}
	
	if (mouse_check_button_released(mb_right))
	{
		if (global.charge_counter > 10)
		{
			shock = instance_create(x, y, objPulseRipple);
			shock.image_xscale = 0.8;
			shock.image_yscale = shock.image_xscale;
			
			// Create swords.
			sound_ps(sndBlisteringSwords);
			
			blade1 = instance_create(x, y, objBlisteringSwords);
			blade1.direction = 90;
			blade1.speed = 24;
			blade1.image_angle = 270;
			blade1.image_xscale = -1.5;
			blade1.image_yscale = -1.5;
			
			blade2 = instance_create(x, y, objBlisteringSwords);
			blade2.direction = 180;
			blade2.speed = 24;
			blade2.image_angle = 0;
			blade2.image_xscale = -1.5;
			blade2.image_yscale = -1.5;
			
			blade3 = instance_create(x, y, objBlisteringSwords);
			blade3.direction = 270;
			blade3.speed = 24;
			blade3.image_angle = 90;
			blade3.image_xscale = -1.5;
			blade3.image_yscale = -1.5;
			
			blade4 = instance_create(x, y, objBlisteringSwords);
			blade4.direction = 0;
			blade4.speed = 24;
			blade4.image_angle = 180;
			blade4.image_xscale = -1.5;
			blade4.image_yscale = -1.5;
			
			blade5 = instance_create(x, y, objBlisteringSwords);
			blade5.direction = 45;
			blade5.speed = 24;
			blade5.image_angle = 225;
			blade5.image_xscale = -1.5;
			blade5.image_yscale = -1.5;
			
			blade6 = instance_create(x, y, objBlisteringSwords);
			blade6.direction = 135;
			blade6.speed = 24;
			blade6.image_angle = 315;
			blade6.image_xscale = -1.5;
			blade6.image_yscale = -1.5;
			
			blade7 = instance_create(x, y, objBlisteringSwords);
			blade7.direction = 225;
			blade7.speed = 24;
			blade7.image_angle = 45;
			blade7.image_xscale = -1.5;
			blade7.image_yscale = -1.5;
			
			blade8 = instance_create(x, y, objBlisteringSwords);
			blade8.direction = 315;
			blade8.speed = 24;
			blade8.image_angle = 135;
			blade8.image_xscale = -1.5;
			blade8.image_yscale = -1.5;
		}
		global.charge_counter = 0;
		charged = 0;
	}
}

// THOMAS: heavy strikes.
if (global.character == 1)
{
	if (mouse_check_button(mb_right))
	{
		global.charge_counter++;
		
		global.shake += 0.2;
		if (global.shake > 10)
			global.shake = 10;
	}
	
	if (global.charge_counter >= 30 && charged == 0)
	{
		charge = instance_create(x, y, objPsychicCharged);
		charge.image_xscale = 0.5;
		charge.image_yscale = charge.image_xscale;
		sound_ps(sndLeviathanCharged);
		charged = 1;
	}
	
	if (mouse_check_button_released(mb_right))
	{
		if (global.charge_counter > 30)
		{
			/* shock = instance_create(x, y, objPulseRipple)
            shock.image_xscale = 0.8
            shock.image_yscale = shock.image_xscale */
			
			// Dash if already moving.
			if (state_name == "Default")
			{
				if ((abs(myxspeed) + abs(myyspeed)) != 0)
				{
					sound_ps(sndDash);
					state_switch("Dash");
				}
			}
			
			sound_ps(sndSwingFists);
			sprite_index = choose(thomasStrikeL1, thomasStrikeL2, thomasStrikeL3, thomasStrikeL4, thomasStrikeL4, thomasStrikeL4, thomasStrikeL4);
			image_speed = 0.33;
			reload = 1;
			global.shake = 15;
			
			// sleep(50)
		}
		
		global.charge_counter = 0;
		charged = 0;
	}
}

/* */
/// ABILITY: Toggle fire-rate.
if (keyboard_check_pressed(ord(global.switchkey)))
{
	global.automatic = !global.automatic;
	sound_ps(sndSwitchFiringMode);
	
	// Detonate C4.
	if (instance_exists(objC4))
	{
		sound_ps(sndDetonateC4);
		sprite_index = sprPDetonateC4;
		image_speed = 0.5;
		with (objC4)
			alarm[0] = 5;
	}
}

if (keyboard_check_pressed(ord("M"))) {
    room_restart();
    exit;
}

/* */
/// ABILITY: Enter berserk mode.

/* if global.combo >= 20 {
    
    if berserk = 0 {
        objEffector.brus = 6
        sound_ps(sndThunder)
        scrPlayerDropWeapon()
        sprite_index = sprPWalkLeviathan
        shock = instance_create(x, y, objPulseRipple)
        shock.image_xscale = 0.8
        shock.image_yscale = shock.image_xscale

        // Create swords.
        sound_ps(sndBlisteringSwords)

        blade1 = instance_create(x, y, objBlisteringSwords)
        blade1.direction = 90
        blade1.speed = 24
        blade1.image_angle = 270
        blade1.image_xscale = -1.5
        blade1.image_yscale = -1.5

        blade2 = instance_create(x, y, objBlisteringSwords)
        blade2.direction = 180
        blade2.speed = 24
        blade2.image_angle = 0
        blade2.image_xscale = -1.5
        blade2.image_yscale = -1.5

        blade3 = instance_create(x, y, objBlisteringSwords)
        blade3.direction = 270
        blade3.speed = 24
        blade3.image_angle = 90
        blade3.image_xscale = -1.5
        blade3.image_yscale = -1.5

        blade4 = instance_create(x, y, objBlisteringSwords)
        blade4.direction = 0
        blade4.speed = 24
        blade4.image_angle = 180
        blade4.image_xscale = -1.5
        blade4.image_yscale = -1.5

        blade5 = instance_create(x, y, objBlisteringSwords)
        blade5.direction = 45
        blade5.speed = 24
        blade5.image_angle = 225
        blade5.image_xscale = -1.5
        blade5.image_yscale = -1.5

        blade6 = instance_create(x, y, objBlisteringSwords)
        blade6.direction = 135
        blade6.speed = 24
        blade6.image_angle = 315
        blade6.image_xscale = -1.5
        blade6.image_yscale = -1.5

        blade7 = instance_create(x, y, objBlisteringSwords)
        blade7.direction = 225
        blade7.speed = 24
        blade7.image_angle = 45
        blade7.image_xscale = -1.5
        blade7.image_yscale = -1.5

        blade8 = instance_create(x, y, objBlisteringSwords)
        blade8.direction = 315
        blade8.speed = 24
        blade8.image_angle = 135
        blade8.image_xscale = -1.5
        blade8.image_yscale = -1.5

        berserk = 1
    }
} else berserk = 0

/* */
///

/* */
/// Particle effects.

if (sprite_index == sprPWalkBoilingPot)
{
	if (round(random(5)) == 2)
		instance_create(x + lengthdir_x(11, dir - 33 * left), y + lengthdir_y(11, dir - 33 * left), objSteam);
	em_steam = part_emitter_create(boiling_steam);
	part_emitter_region(boiling_steam, em_steam, x + lengthdir_x(11, dir - 33 * left), x + lengthdir_x(11, dir - 33 * left), y + lengthdir_y(11, dir - 33 * left), y + lengthdir_y(11, dir - 33 * left), 0, 0);
	part_emitter_burst(boiling_steam, em_steam, steam, 1);
}

/* if steps {
    steps_rate -= 1 
    if steps_rate < 0 {
        steps_side = -steps_side
        footprint = instance_create(x + steps_side, y, objFootPrint)
        footprint.image_angle = walkdir
        steps_duration -= 1
        if steps_duration < 0 steps = false
    }
}

if place_meeting(x, y, objBloodPool) {
    steps_count = steps_duration
    steps = true
}
/*if scrPlayerHasGun(sprite_index) and !scrIsReloading(sprite_index) and !scrIsFiring(sprite_index) {
    em = part_emitter_create(smoke_trail)
    part_emitter_region(smoke_trail,em,x + lengthdir_x(23, dir), x + lengthdir_x(23, dir), y + lengthdir_y(23, dir), y + lengthdir_y(23, dir), 0,0)
    part_emitter_burst(smoke_trail,em,pt,1)
}

/* */
/// Audio controls.
// audio_listener_position(x, y, 0)

// Flamethrower.
if (scrCurrentWeaponExt(sprite_index) == 28)
{
	if (ammo > 0)
	{
		if (mouse_check_button(mb_left))
		{
			if (played == 0)
			{
				sound_ps(sndFlamethrowerStart);
				played = 1;
			}
			if (!audio_is_playing(sndFlamethrower))
				audio_play_sound(sndFlamethrower, 1, true);
		}
		else
		{
			audio_stop_sound(sndFlamethrower);
			played = 0;
		}
	}
	else
	{
		if (audio_is_playing(sndFlamethrower))
			audio_stop_sound(sndFlamethrower);
	}
}
else
{
	if (audio_is_playing(sndFlamethrower))
		audio_stop_sound(sndFlamethrower);
}

/* */
/*  */
