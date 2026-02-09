/// @description  Flash player.

if (on == 0)
{
	starttime = current_time;
	with (objPlayer)
	{
		if (place_meeting(x, y, objFlashbangExplosion))
		{
			sound_ps(sndFlashbangEffect);
			if (pierretteIsShielded(sprite_index))
				objEffector.flashalpha = 0.2;
			else
			{
				audio_sound_gain(global.song, 0.05, 0);
				objEffector.flashalpha = 1;
			}
		}
	}
}

on = 1;

if (on == 1)
{
	if (audio_sound_get_gain(global.song) < 1)
	{
		audio_sound_gain(global.song, 1, 13000);
	}
}

