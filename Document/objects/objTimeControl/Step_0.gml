/// @description  Control bullet time.

// SLOW DOWN TIME
if (slowDown == true)
{
	if (global.timeMultiplier > 0.2)
	{
		global.timeMultiplier -= 0.05;
	}
	else
	{
		global.timeMultiplier = 0.2;
	}
}
else
{
	if (global.timeMultiplier < 1)
	{
		global.timeMultiplier += .05;
	}
	else
	{
		global.timeMultiplier = 1;
	}
}


// PLAY HEARTBEAT
if (global.timeMultiplier <= 0.5)
{
	if (!sound_isplaying(sndHeartbeat))
	{
		sound_loop(sndHeartbeat);
	}
}
else if (sound_isplaying(sndHeartbeat))
{
	sound_stop(sndHeartbeat);
}

