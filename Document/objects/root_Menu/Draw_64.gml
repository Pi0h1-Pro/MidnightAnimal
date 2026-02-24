display_set_gui_size(win_w,win_h);
if window_has_focus()
{
	if !isPaused {window_set_cursor(cr_none);}
}
else
{
	window_set_cursor(cr_default);
}

function draw_background() 
{
	if (room != roomTitle) {
		draw_set_alpha(alpha_background);
		draw_rectangle_color
		(
			-1,
			-1,
			w_width,
			w_height,
			color_background,
			color_background,
			color_background,
			color_background,
			false
		);
		draw_set_alpha(1);
	}
}

function draw_options()
{	
	draw_set_alpha(1);
	draw_set_font(fnt_options);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top );
	
	var x1_highlight_zone =  x_option - 2;
	var y1_highlight_zone =	 y_option - 2;
	var x2_highlight_zone = (128) + 2;
	var y2_highlight_zone = (y_option + y_distance * i_total);
	
	i = 0;
	repeat(i_total)
	{
		var xx = x_option;
		var yy = y_option + (y_distance*i);
		
		area_x1[i] = -1;
		area_y1[i] = yy;
		area_x2[i] = window_get_width();
		area_y2[i] = yy + string_height(option[i]);
	
		if (debug_draw_boxes)
		{
			draw_rectangle_color
			(
			area_x1[i],
			area_y1[i],
			area_x2[i],
			area_y2[i],
			c_red,
			c_red,
			c_red,
			c_red,
			1
			);
		}
		
		draw_text_color
		(
			xx,
			yy,
			option[i],
			c_text,
			c_text,
			c_text,
			c_text,
			1
		);
		i++;
	}
	
	i=0;
	if (isHighlighting)
	{
	draw_text_color
	(
		xx,
		y_option + (y_distance*highlight_option),
		option[highlight_option],
		c_textHighlight,
		c_textHighlight,
		c_textHighlight,
		c_textHighlight,
		1
	);
	}
	
	if (debug_draw_boxes)
		{
		draw_rectangle_color
		(
			x1_highlight_zone,
			y1_highlight_zone,
			x2_highlight_zone,
			y2_highlight_zone,
			c_lime,
			c_lime,
			c_lime,
			c_lime,
			1
		);
		}
	if
	(
		window_mouse_get_x() > x1_highlight_zone
	&&	window_mouse_get_x() < x2_highlight_zone
	&&	window_mouse_get_y() > y1_highlight_zone
	&&	window_mouse_get_y() < y2_highlight_zone
	)
	{
		isHighlighting = true;
	} else 
	{
		isHighlighting = false;
	}
	
	var mouse_is_hovering_option = function(argument0)
	{
		if
		(
			window_mouse_get_x() > area_x1[argument0]
		&&	window_mouse_get_x() < area_x2[argument0]
		&&	window_mouse_get_y() > area_y1[argument0]
		&&	window_mouse_get_y() < area_y2[argument0]
		)
		{
			return true
		}
	}

	i = 0;
	repeat (i_total)
	{
		if mouse_is_hovering_option(i)
		{
			highlight_option = i;
		}
	i ++;
	}
	
	var debugstring =
	@"
	highlight_option = "+string(highlight_option)+@"
	isHighlighting = "+string(isHighlighting)
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top );
	draw_set_font(root_fntConsole)
	draw_set_color(c_white)
	if (debug_draw_boxes)
	{
		draw_text(window_mouse_get_x()+32,window_mouse_get_y(),debugstring);
	}
}

function draw_pausemenu()
{
	draw_background();
	draw_options();
	//draw_sprite(root_sprLogo,0,x_logo,y_logo)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(root_fntGameTitle);
	draw_text_ext_color(x_logo,y_logo,string(game_display_name),32,360,c_aqua,c_blue,c_blue,c_aqua,1);
	
	window_set_cursor(cr_default);
}

if (isPaused)
{
	draw_pausemenu();
}
else
{
	window_set_cursor(cr_none);
}
display_set_gui_size(game_w,game_h);