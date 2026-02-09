// if !instance_exists(objPlayerDead) exit
// if file_exists("tempsave") {scrResetActiveSurfaces() scrLoadFloor()} else game_restart()

if (global.xbox == 1)
	exit;
if (instance_exists(objMaskMenu))
	exit;
if (instance_exists(objPlayer))
	nothing = 1;
else
{
	scrSaveAchievements();
	fade = 1;
	next = 0;
}

if (sound_isplaying(sndBigExplosion))
{
	sound_stop(sndBigExplosion);
	scrSongVolume(1);
}

if (instance_exists(objPlayerDead))
{
	if (file_exists("tempsave"))
	{
		scrResetActiveSurfaces();
		scrLoadFloor();
	}
	else
		game_restart();
}

