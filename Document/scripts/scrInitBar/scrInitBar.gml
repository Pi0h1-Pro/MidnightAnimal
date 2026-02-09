function scrInitBar() {
	bar_surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
	surface_set_target(bar_surf);
	draw_clear_alpha(c_black, 0);
	draw_set_color(c_black);
	for (yy = 0; yy < bar_endh; yy += 1)
	{
		draw_set_alpha(yy / bar_endh);
		draw_line(0, yy, __view_get( e__VW.WView, 0 ), yy);
	}
	for (yy = bar_h - bar_endh; yy < bar_h; yy += 1)
	{
		draw_set_alpha((bar_h - yy) / bar_endh);
		draw_line(0, yy, __view_get( e__VW.WView, 0 ), yy);
	}
	draw_set_alpha(1);
	for (yy = bar_endh; yy < bar_h - bar_endh; yy += 1)
		draw_line(0, yy, __view_get( e__VW.WView, 0 ), yy);



}
