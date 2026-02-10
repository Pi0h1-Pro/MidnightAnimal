SteamRunCallbacks();
if (global.loaded == 1)
{
	scrLoadAchievements();
	scrLoadBonusList();
	with (objSurfacer)
	{
		scrSurfaceTiles();
	}
	with (objWeapon)
	{
		if (object_index == objSpecificWeapon)
			nothing = 1;
		else
		{
			instance_create(x, y, objWeapon);
			instance_destroy();
		}
	}
	leveltitle = "";
	levelshow = 120;
	global.loaded = 0;
	scrSaveTiles();
	if (global.maskindex == 9)
		objPlayer.energie = 1;
	if (global.maskindex == 21)
		objPlayer.energie = 2;
}

if (global.xbox == 1)
{
	if (checkbutton(0, getid(6)))
	{
		if (pressback == 0)
		{
			pressback = 1;
			scrXboxEffectorHousePause();
		}
	}
	else
		pressback = 0;
}

if (save == 1)
{
	save = 0;
	test = objPlayer.persistent;
	objPlayer.persistent = 0;
	global.loaded = 1;
	//game_save(working_directory + "\\tempsave.sav");
	global.loaded = 0;
	objPlayer.persistent = test;
}


vlastx = __view_get( e__VW.XView, 0 );
vlasty = __view_get( e__VW.YView, 0 );


if (global.shake > 0)
{
	global.shake -= 0.5;
	if (global.xbox == 1)
		setrumble(0, 0, global.shake * (1 / 15) * 65535);
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (-global.shake * 0.33 + random(global.shake * 0.66)) );
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (-global.shake * 0.33 + random(global.shake * 0.66)) );
}

