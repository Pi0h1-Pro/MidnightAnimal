if (trainspeed > 6)
{
	instance_create(0, random(64), objSpeedLine);
	instance_create(0, 192 + random(64), objSpeedLine);
	if (instance_exists(objPlayer))
	{
		if (stationalpha > 0)
			stationalpha -= 0.005;
	}
	else
	{
		if (stationalpha < 1 && trainspeed <= 17)
			stationalpha += 0.005;
	}
	
	if (global.lightx < room_width + 320)
		global.lightx += trainspeed;
	else
	{
		if (round(random(160)) == 2)
			global.lightx = -320;
	}
	
	if (round(random(30)) == 2)
	{
		myrumble = random(8);
		if (myrumble > rumble)
			rumble = myrumble;
	}
}
else
{
	if (global.lightx > -300)
	{
		if (global.lightx < room_width + 320)
			global.lightx += trainspeed;
		else
		{
			if (round(random(160)) == 2)
				global.lightx = -320;
		}
	}
}

global.shake = rumble;

if (rumble > 0)
	rumble -= 0.025;

if (wait > 0)
	wait -= 1;
else
{
	if (!instance_exists(objPlayer))
	{
		if (trainspeed > 0)
			trainspeed -= 0.05;
	}
	else
	{
		if (trainspeed < 24)
			trainspeed += 0.05;
	}
}

