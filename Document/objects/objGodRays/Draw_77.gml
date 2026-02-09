/// @description  Draw Shaders

// draw wave distortion effect
// shader_set(sh_underwater);

// shader_set_uniform_f(u_resolution_water,display_get_gui_width().0,display_get_gui_height().0);

// shader_set_uniform_f(u_seconds_water,sec);

// texture_set_stage(u_texture_water, surface_get_texture(application_surface)); //feed application surface into shader

// draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false);

// shader_reset();


// draw godray effect
draw_surface(application_surface, 0, 0);

shader_set(shdGodRays);

shader_set_uniform_f(u_resolution, display_get_gui_width(), display_get_gui_height());

shader_set_uniform_f(u_seconds, sec);

draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

shader_reset();

