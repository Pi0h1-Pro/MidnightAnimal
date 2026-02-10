/// @description  Controller input.

// Start to pause.
if (gamepad_button_check_pressed(0, gp_start))
{
	if (fade == 0 && amount == 180)
	{
		if (scrMovingPlayerExists())
		{
			if (objPlayer.persistent == 1)
				objPlayer.persistent = 0;
		}
		sound_ps(sndPause);
		scratch = 100;
		instance_create(x, y, objPause);
	}
}

if (instance_exists(objDrawRestart))
{
	if (gamepad_button_check_pressed(0, gp_face1))
	{
		with (objDrawRestart)
			fade = 1;
	}
}

/// Player states.

if (instance_exists(objSunset))
	global.lightQuantity = 0.4;
else
	global.lightQuantity = 0.7;
glr_set_ambient_daytime(global.lightQuantity);

// Stabilise view.
vlastx = __view_get( e__VW.XView, 0 );
vlasty = __view_get( e__VW.YView, 0 );

// Control screenshake.
scrScreenShake();

// Level completion.
scrLevelClear();

if (scrMovingPlayerExists())
{
	if (pierretteIsShielded(objPlayer.sprite_index))
		shielded = true;
	else
		shielded = false;
}

if (fade == 0)
{
	if (amount < 180)
	{
		amount += 5;
	}
}

if (fade == 1)
{
	if (amount > 0)
	{
		amount -= 10;
	}
	else
	{
		fade = 0;
		if (restart == 1)
		{
			game_restart();
		}
		else
		{
			if (next == 1)
			{
				if (instance_exists(objPlayerCar))
					if (objPlayerCar.enter == 1)
						audio_sound_gain(global.CurrentSong, amount * (1 / 180), 0);
				room = nextroom;
			}
			else
			{
				//game_load(working_directory + "\\tempsave.sav");
			}
		}
	}
}

// Debug
if (input)
	inputstring = keyboard_string;

/// Various timers.
/* if keyboard_check(vk_up)
    {
    if global.vol < 1 global.vol += 0.001
    audio_master_gain(global.vol);
    }
 if keyboard_check(vk_down)
    {
    if global.vol > 0 global.vol -= 0.001
    audio_master_gain(global.vol);
    }

/* */
/*  */
