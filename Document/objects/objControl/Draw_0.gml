if (surface_exists(global._lsys_surface))
{
	lsys_draw();
}

/*
var i, j, xp, yp;
//Draw boundaries around objects which cast shadows.
draw_set_color(c_red);
for (i = 0; i < global._lsys_casters; i += 1)
{
    if (global._lsys_caster_deleted[i])
        continue;
    draw_primitive_begin(pr_linestrip);
    for (j = 0; j < global._lsys_caster_points[i]; j += 1)
    {
        xp = global._lsys_caster_xpos[i] + global._lsys_caster_point_x[i, j];
        yp = global._lsys_caster_ypos[i] + global._lsys_caster_point_y[i, j];
        draw_vertex(xp/global._lsys_quality, yp/global._lsys_quality);
    }
    xp = global._lsys_caster_xpos[i] + global._lsys_caster_point_x[i, 0];
    yp = global._lsys_caster_ypos[i] + global._lsys_caster_point_y[i, 0];
    draw_vertex(xp/global._lsys_quality, yp/global._lsys_quality);
    draw_primitive_end();
    draw_circle_color((global._lsys_caster_xpos[i] + global._lsys_caster_cx[i])/global._lsys_quality, (global._lsys_caster_ypos[i] + global._lsys_caster_cy[i])/global._lsys_quality, 8, c_red, c_red, true);
}

//Draw circle around caster of light.
draw_set_color(c_yellow);
for (i = 0; i < global._lsys_lights; i += 1)
{
    if (!global._lsys_light_deleted[i])
        draw_circle(global._lsys_light_xpos[i]/global._lsys_quality, global._lsys_light_ypos[i]/global._lsys_quality, 8, true);
}
*/
/*
draw_set_color(c_white);
draw_set_font(fntDetails);
draw_text(view_wview[0] - 22, 130, "FPS: " + string(fps) + "#VRAM: " + string(vram_usage()/1024/1024));

/* */
/*  */
