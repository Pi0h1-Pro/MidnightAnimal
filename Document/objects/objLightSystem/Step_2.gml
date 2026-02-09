// Deactivation: I've left it up to the user to decide what should be deactivated....
// since its virtually impossible to determine what needs to be active offscreen.
instance_deactivate_object(objLSLight);
instance_deactivate_object(objLSShadow);
instance_deactivate_object(objLSSpecTile);
instance_deactivate_object(objLSSpecLight);
instance_activate_region(__view_get( e__VW.XView, 0 ) - 100, __view_get( e__VW.YView, 0 ) - 100, __view_get( e__VW.WView, 0 ) + 200, __view_get( e__VW.HView, 0 ) + 200, 1);

// L3S_define_view(x,y,xborder,yborder,max hspeed,max vspeed)
if (scrMovingPlayerExists())
{
	if (fps)
	{
		L3S_define_view(objPlayer.x, objPlayer.y, 10, 10, 10 * 60 / max(fps, 1), 10 * 60 / max(fps, 1));
	}
}

// L3S_system_update()
L3S_system_update();

