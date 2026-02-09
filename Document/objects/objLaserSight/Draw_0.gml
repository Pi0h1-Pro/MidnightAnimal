if (instance_exists(objPlayer))
{
	draw_set_blend_mode(bm_add);
	draw_set_alpha(.5);
	draw_circle_color(x, y, 20, c_red, c_black, false);
	draw_circle_color(objPlayer.x, objPlayer.y, 40, c_red, c_black, false);
	draw_set_alpha(1);
	draw_circle_color(x, y, 3, c_white, c_black, false);
	
	// draw_circle_color(objPlayer.x, objPlayer.y, 20, c_white, c_black, false);
	
	d3d_transform_set_identity();
	d3d_transform_add_scaling(varScale, 1, 1);
	d3d_transform_add_rotation_z(image_angle);
	d3d_transform_add_translation(objPlayer.x, objPlayer.y, 0);
	draw_primitive_begin(pr_trianglefan);
	draw_vertex_color(0, 0, c_red, 1);
	draw_vertex_color(.01, -4, c_black, 1);
	draw_vertex_color(.99, -4, c_black, 1);
	draw_vertex_color(1, 0, c_red, 1);
	draw_vertex_color(.99, 4, c_black, 1);
	draw_vertex_color(.01, 4, c_black, 1);
	draw_primitive_end();
	draw_primitive_begin(pr_trianglefan);
	draw_vertex_color(0, 0, c_red, .25);
	draw_vertex_color(.01, -6, c_black, .25);
	draw_vertex_color(.99, -6, c_black, .25);
	draw_vertex_color(1, 0, c_red, .25);
	draw_vertex_color(.99, 6, c_black, .25);
	draw_vertex_color(.01, 6, c_black, .25);
	draw_primitive_end();
	draw_line_color(0, 0, 1, 0, c_white, c_black);
	d3d_transform_set_identity();
	beam_draw(fxBeam, c_red, c_red, 1, 0);
	beam_draw(fxBeamHot, c_gray, c_gray, 1, 1);
	draw_set_blend_mode(bm_normal);
}

