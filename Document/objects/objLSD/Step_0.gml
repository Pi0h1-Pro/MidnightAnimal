if (!surface_exists(surf))
{
	surf = surface_create(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));
}
set_automatic_draw(false);
surface_set_target(surf);
screen_redraw();
surface_reset_target();
if (!instance_exists(objPlayerDead))
{
	if (scrMovingPlayerExists())
		targetamount = 5 + (abs(objPlayer.myxspeed) + abs(objPlayer.myyspeed));
	else
		targetamount = 5;
}
else
	targetamount = 5;
if (amount < targetamount)
	amount += 0.025;
else
	amount = targetamount;
if (amount > targetamount)
	amount -= 0.005;
else
	amount = targetamount;
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WView, 0 ) * 0.9, __view_get( e__VW.HView, 0 ) * 0.9, 0);
if (instance_exists(objPlayer))
	scrDrawLSD(1);
if (black == 1)
{
	draw_clear(c_black);
	black = 0;
}
screen_refresh();
dir += 1;

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
	if (file_exists("tempsav"))
	{
		scrResetActiveSurfaces();
		scrLoadFloor();
	}
	else
		game_restart();
}

