draw_set_alpha(1);
if (objRippleControl.redrawn == true)
{
	// If the surface is clean
	var width, offset, d, tex, tex_x, tex_y, i, xx, yy;
	width = min(radius, 25);
	offset = (200 - radius) / 5;
	d = 360 / 80;
	
	tex = surface_get_texture(objRippleControl.buffer_surface);
	tex_x = texture_get_width(tex) / surface_get_width(objRippleControl.buffer_surface);
	tex_y = texture_get_height(tex) / surface_get_height(objRippleControl.buffer_surface);
	texture_set_repeat(true);
	
	draw_primitive_begin_texture(pr_trianglestrip, tex);
	
	draw_set_color(c_white);
	
	for (i = 0; i <= 80; i += 1)
	{
		xx = x + lengthdir_x(radius, i * d);
		yy = y + lengthdir_y(radius, i * d);
		draw_vertex_texture(xx, yy, tex_x * (xx + lengthdir_x(offset, i * d)), tex_y * (yy + lengthdir_y(offset, i * d)));
		
		xx = x + lengthdir_x(radius - width, i * d);
		yy = y + lengthdir_y(radius - width, i * d);
		draw_vertex_texture(xx, yy, tex_x * (xx), tex_y * (yy));
	}
	
	for (i = 0; i <= 80; i += 1)
	{
		xx = x + lengthdir_x(radius + width, i * d);
		yy = y + lengthdir_y(radius + width, i * d);
		draw_vertex_texture(xx, yy, tex_x * (xx), tex_y * (yy));
		
		xx = x + lengthdir_x(radius, i * d);
		yy = y + lengthdir_y(radius, i * d);
		draw_vertex_texture(xx, yy, tex_x * (xx + lengthdir_x(offset, i * d)), tex_y * (yy + lengthdir_y(offset, i * d)));
	}
	
	draw_primitive_end();
}

