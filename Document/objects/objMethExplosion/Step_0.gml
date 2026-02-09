global.test = 0;



with (objMethLab)
{
	if (place_meeting(x, y, objBullet) || place_meeting(x, y, objEBullet) || place_meeting(x, y, objFlame) || place_meeting(x, y, objNail) || place_meeting(x, y, objFlare))
	{
		global.test = 1;
	}
}


if (global.test == 1)
{
	if (on == 0)
	{
		image_index = 2;
		sound_play(sndBigExplosion);
		scrSongVolume(0.1);
		vol = 0.1;
		starttime = current_time;
		
		if (index > 6 && heard == 0)
		{
			heard = 1;
			scrHearPlayer();
			
			// scrHearPlayer(x+77,y+75)
		}
	}
	
	
	if (on == 1)
	{
		if (current_time - starttime > 4000)
		{
			if (vol < 1)
			{
				vol += 0.01;
				scrSongVolume(vol);
			}
		}
	}
}

