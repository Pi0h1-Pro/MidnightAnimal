draw_self_shadow(1);

if (on == 1)
{
	draw_set_blend_mode(bm_add);
	draw_circle_color(x, y, 80 + random(6), make_color_hsv(0, 0, 70), c_black, 0);
	draw_set_blend_mode(bm_normal);
}

/* draw_set_color(c_white)
scrDrawLensFlare(x,y,250,2,2,1,choose(3,4,5),choose(0.5,0.6,0.7))

/* */
/*  */
