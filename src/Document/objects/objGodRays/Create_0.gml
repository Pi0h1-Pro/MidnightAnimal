/// @description Get Shader Uniforms

u_resolution = shader_get_uniform(shdGodRays, "iResolution");
u_seconds = shader_get_uniform(shdGodRays, "iGlobalTime");

sec = 0;

///Stop Automated Drawing of Application Surface in PostDraw Event

application_surface_draw_enable(false);

