if (select == 0)
{
	with (objPause)
	{
		scrSongVolume(1);
		on = 0;
		sound_play(sndUnPause);
		symbol = 3;
	}
	instance_destroy();
}

if (select == 1)
{
	sound_stop(sndStaticVHS);
	if (file_exists("tempsave.sav"))
	{
		scrLoadFloor();
		
		// lsys_init()
	}
	else
		game_restart();
	scrSongVolume(1);
	//bgm_Unpause(global.currentsong);
	fade = 1;
}

if (select == 3)
{
	scrMusicClose();
	
	// sga_Free()
	sound_stop(sndStaticVHS);
	scrClearBlood();
	i = 0;
	repeat (1000)
	{
		if (surface_exists(i))
			surface_free(i);
		i += 1;
	}
	game_restart();
}

