/// @description  Zoom out with scopes.
hp -= 10; // DEBUG

// Allow zoom only if the aim further key is being pressed.
if (keyboard_check(vk_shift))
{
	// 2x magnification for Intervention.
	if (scrCurrentWeaponExt(sprite_index) == 29)
	{
		if (global.scopeZoom > 0)
		{
			global.scopeZoom -= 8;
			sound_ps(sndSniperZoom);
			objEffector.blackalpha = 1;
		}
		else
			global.scopeZoom = 0;
	}
	
	// 3x magnification for WA2000.
	if (scrCurrentWeaponExt(sprite_index) == 49)
	{
		if (global.scopeZoom > 0)
		{
			global.scopeZoom -= 4;
			sound_ps(sndSniperZoom);
			objEffector.blackalpha = 1;
		}
		else
			global.scopeZoom = 0;
	}
}

view_zoom_type = "in";
view_zoom_step = 1;

