/// @description  Select options.

// Resume the game.
if (select == 0)
{
	global.screeneffect = 6;
	sound_ps(sndPause);
	active = !active;
	global.active = 1;
}

// Restart the level.
if (select == 1)
{
	// audio_stop_sound(mscInbou)
	if (instance_exists(objSnow))
		with (objSnow)
			instance_destroy();
	i = 0;
	repeat (1000)
	{
		if (surface_exists(i))
			surface_free(i);
		i += 1;
	}
	game_restart();
}

// Return to main menu.
if (select == 2)
{
	game_end();
}

