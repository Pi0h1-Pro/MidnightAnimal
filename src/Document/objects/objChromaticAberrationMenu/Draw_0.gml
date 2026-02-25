if (shader = 1) {
  shader_set(shdChroma);
  shader_set_uniform_f(dis_u, dis);
}

draw_surface_stretched(application_surface, 0, 0, __view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));

shader_reset();


