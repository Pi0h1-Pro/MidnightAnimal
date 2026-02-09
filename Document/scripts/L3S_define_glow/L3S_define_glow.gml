function L3S_define_glow(argument0, argument1, argument2, argument3) {
	// L3S_define_bloom(Blur,Quality,Amount)

	// argument0: blur type(1-2)
	// argument1: Blur amount (0- )
	// argument2: Blur repitions (required for blur no.2)

	// Blurs:
	// 1: Guassian Blur              Averages each pixel by the given radius(blur amount)
	// 2: Extended Guassian Blur     Uses down sampling and multiple blur passes to make a
	//                              good but expensive bloom blur.

	if (global.LS_glow)
	{
		global.LS_glow_type = argument0;
		global.LS_glow_quality = argument1;
		global.LS_glow_amount = argument2;
		global.LS_glow_map = surface_create(__view_get( e__VW.WView, 0 ) * argument1, __view_get( e__VW.HView, 0 ) * argument1);
		if (global.LS_glow_type == 2)
		{
			var scale;
			scale = 1;
			global.LS_glow_mipmap = ds_list_create();
			for (i = 0; i < argument3; i += 1)
			{
				ds_list_add(global.LS_glow_mipmap, surface_create(__view_get( e__VW.WView, 0 ) * argument1 * scale, __view_get( e__VW.HView, 0 ) * argument1 * scale));
				scale *= 0.5;
			}
		}
	}



}
