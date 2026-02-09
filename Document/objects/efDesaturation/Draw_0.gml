/// @description  Draw filter.
shader_set(shdGreyscale);
shader_set_uniform_f(uni_greyscale_fade, global.var_greyscale_fade);
draw_surface_stretched(application_surface, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

// draw_surface_stretched(application_surface,view_xview[0],view_yview[0],surface_get_width(application_surface), surface_get_height(application_surface))
shader_reset();

