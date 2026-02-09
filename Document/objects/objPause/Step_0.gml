/// @description  Fade

if (on == 1)
{
	if (factor < 0.75)
		factor += 0.05;
}

if (on == 0)
{
	if (factor > 0)
		factor -= 0.05;
	else
	{
		// if sprite_exists(global.sprite) sprite_delete(global.sprite)
		// if file_exists(working_directory+"\pause.bmp") file_delete(working_directory+"\pause.bmp")
		sound_stop(sndPause);
		instance_activate_all();
		with (objPauseMenuSplatter)
			instance_destroy();
		with (objPauseMenuSplatterShot)
			instance_destroy();
		instance_destroy();
	}
}

/// Animation behaviour.
if (state > 2)
	state = 2;
if (state < 0)
	state = 0;

