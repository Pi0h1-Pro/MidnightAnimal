/// @description  Select options.

// Resume the game.
if (select == 0)
{
	if (on == 0)
		exit;
	on = 0;
	
	sound_ps(sndPause);
	audio_stop_sound(mscInbou);
	audio_resume_sound(global.CurrentSong);
}

// Restart the level.
if (select == 1)
{
	audio_stop_sound(mscInbou);
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
	cut = !cut;
	game_end();
	
	/* audio_stop_sound(mscInbou)
    i = 0
    repeat(1000) {
        if surface_exists(i) surface_free(i)
        i += 1
    }
    game_restart ()*/
}

/* */
/*  */
