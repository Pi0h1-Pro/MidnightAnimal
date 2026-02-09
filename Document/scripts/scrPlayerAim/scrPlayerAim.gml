function scrPlayerAim() {
	// Calculate view distance.

	// Set key for aiming.
	aimfar = keyboard_check_direct(vk_shift) || gamepad_button_check(0, gp_stickl);

	// Obsolete functions from HM1 for showing an icon next to the cursor depending on the action:
	// either picking up a weapon (global.test = 2), or executing an enemy (global.test = 1).
	if (throwreload > 0)
		throwreload -= 1;

	// If aiming further...
	if (aimfar)
	{
		// Set greater viewing and variable aiming distance for scoped weapons.
		if (scrCurrentWeaponExt(objPlayer.sprite_index) == 29 || scrCurrentWeaponExt(objPlayer.sprite_index) == 49)
		{
			xfactor = 15 + global.scopeZoom;
			yfactor = 9 + global.scopeZoom;
		}
		else
		{
			// Standard aiming distance.
			xfactor = 10;
			yfactor = 6;
		}
	}
	else
	{
		// ...otherwise, set normal view distance.
		xfactor = 1;
		yfactor = 1;
	}

	if (sprite_index == sprPTurnDW)
	{
		xfactor = 3;
		yfactor = 2;
	}

	if (instance_exists(bgWaves))
	{
		addy = lengthdir_x(16, bgWaves.dir * 0.5);
		addx = 0;
	}
	else
	{
		addx = 0;
		addy = 0;
	}

	if (sprite_index == sprPTurnDW)
	{
		viewspeed = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24 * xfactor, dir - addangle), y + lengthdir_y(24 * yfactor, dir - addangle)) * 0.1;
		viewdir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24 * xfactor, dir - addangle), y + lengthdir_y(24 * yfactor, dir - addangle));
	}
	else
	{
		viewspeed = point_distance(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24 * xfactor, dir) + addx, y + lengthdir_y(24 * yfactor, dir) + addy) * 0.1;
		viewdir = point_direction(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, x + lengthdir_x(24 * xfactor, dir) + addx, y + lengthdir_y(24 * yfactor, dir) + addy);
	}

	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(viewspeed, viewdir)) );
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(viewspeed, viewdir)) );

	vdist = point_distance(x, y, room_width / 2, room_height / 2);
	vdir = point_direction(room_width / 2, room_height / 2, x, y);
	if (instance_exists(bgWaves))
		__view_set( e__VW.Angle, 0, lengthdir_y(vdist * (1 / 160), vdir * 2) );

	if (__view_get( e__VW.XView, 0 ) > room_width - __view_get( e__VW.WView, 0 ))
		__view_set( e__VW.XView, 0, room_width - __view_get( e__VW.WView, 0 ) );
	if (__view_get( e__VW.YView, 0 ) > room_height - __view_get( e__VW.HView, 0 ))
		__view_set( e__VW.YView, 0, room_height - __view_get( e__VW.HView, 0 ) );
	if (__view_get( e__VW.XView, 0 ) < 0)
		__view_set( e__VW.XView, 0, 0 );
	if (__view_get( e__VW.YView, 0 ) < 0)
		__view_set( e__VW.YView, 0, 0 );

	camera_limit();



}
