/// @description  Calculate post-processing.
shader_set(thresh_shdr);
surface_set_target(thresh_surf);
draw_clear(0);
draw_surface_ext(application_surface, 0, 0, 1 / down_sample, 1 / down_sample, 0, c_white, 1);
surface_reset_target();
shader_reset();

surface_set_target(blur_surf);
shader_set(gaussian_horizontal_shdr);
shader_set_uniform_f(HBlur_uni, blur_size);
shader_set_uniform_f(HRes_uni, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
draw_surface_stretched(thresh_surf, 0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
shader_reset();
surface_reset_target();

surface_set_target(bloom_surf);
shader_set(gaussian_vertical_shdr);
shader_set_uniform_f(VBlur_uni, blur_size);
shader_set_uniform_f(VRes_uni, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
draw_surface(blur_surf, 0, 0);
shader_reset();
surface_reset_target();

/// Apply the effect.

shader_set(SSLF_Dusty_shdr);
texture_set_stage(dust_sampler, dust);
texture_set_stage(hmask_sampler, hmask);
shader_set_uniform_f(DRes_uni, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));
shader_set_uniform_f(DMul_uni, DBEffect);
shader_set_uniform_f(DHal_uni, DB_Halos);
shader_set_uniform_f(DCAbb_uni, DB_ChromAbb);
shader_set_uniform_i(DGhosts_uni, DGhosts);
shader_set_uniform_f(DGhostDisp_uni, DGhostDispersal);
draw_set_blend_mode(bm_add);

// draw_surface_stretched(bloom_surf,0,0,view_wport,view_hport)
draw_surface_stretched(bloom_surf, 0, 0, display_get_gui_width(), display_get_gui_height());
draw_set_blend_mode(bm_normal);
shader_reset();

