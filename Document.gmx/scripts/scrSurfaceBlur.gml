//surface_blur(id,amount); //amount - radius

if (argument1 > 0) {


    var blursurf;

    blursurf = surface_create(surface_get_width(argument0), surface_get_height(argument0));

    surface_set_target(blursurf);
    draw_clear(c_black);
    draw_set_blend_mode(bm_add);

    draw_surface_ext(argument0, 0, 0, 1, 1, 0, -1, 1 / 9);
    for (i = 0; i < 2 * pi; i += pi / 4) {
        draw_surface_ext(argument0, cos(i) * argument1, sin(i) * argument1, 1, 1, 0, -1, 1 / 9);
    }

    surface_reset_target();
    draw_set_blend_mode(bm_normal);
    surface_copy(argument0, 0, 0, blursurf);
    surface_free(blursurf);

}

//by deluksic
