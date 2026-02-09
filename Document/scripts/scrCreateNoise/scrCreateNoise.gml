function scrCreateNoise() {
	// create noise surface (takes a bit of time)
	noise_surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
	surface_set_target(noise_surf);
	draw_clear_alpha(c_white, 0);

	for (yy = 0; yy < __view_get( e__VW.HView, 0 ); yy += 1)
		for (xx = 0; xx < __view_get( e__VW.WView, 0 ); xx += 1)
			if (choose(0, 0, 0, 1))
				draw_point(xx, yy);



}
