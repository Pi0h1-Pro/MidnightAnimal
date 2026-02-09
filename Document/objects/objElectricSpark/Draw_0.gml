draw_set_blend_mode(bm_add);
image_blend = merge_color(merge_color(c_white, c_aqua, random(1)), c_teal, alpha);
image_xscale = speed * 0.5;
draw_self();
draw_set_blend_mode(bm_normal);

