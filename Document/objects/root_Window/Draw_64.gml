display_set_gui_size(win_w, win_h);
root_WindowWidth = sprite_get_width(root_sprWinExterior)*image_xscale;
root_WindowHeight = sprite_get_height(root_sprWinExterior)*image_yscale;

draw_sprite_ext(root_sprWinExterior, theme, x, y, image_xscale, image_yscale, 0, c_white, 1);

var drawButton = function(xx, yy, text = " ", iconButton = root_sprNothing)
{
	draw_sprite_ext(closeIconPanel, theme, xx, yy, 4, 4, 0, c_white, 1);
	draw_set_color(c_BaseText);
	draw_set_font(root_fntMarlett);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(xx+1, yy+1, text);
	
	var ico_w = sprite_get_width(iconButton);
	var ico_h = sprite_get_height(iconButton);
	
	draw_sprite_ext(iconButton, theme, xx+(ico_w/2)+2, yy+(ico_h/2)+2, 1, 1, 0, c_BaseText, 1);
}

x1_windowArea = x;
y1_windowArea = y;
x2_windowArea = x+root_WindowWidth;
y2_windowArea = y+root_WindowHeight;

x1_titleArea = x;
y1_titleArea = y;
x2_titleArea = x+root_WindowWidth;
y2_titleArea = y+32;

x1_buttonArea = x+root_WindowWidth-32+4;
y1_buttonArea = y;
x2_buttonArea = x+root_WindowWidth-8;
y2_buttonArea = y+32;

x1_canvasArea = x+8;
y1_canvasArea = y+48;
x2_canvasArea = x+root_WindowWidth-8;
y2_canvasArea = y+root_WindowHeight-8;


var drawWindowTitle = function()
{	
	if (debug_draw_boxes)
	{
		draw_set_color(c_red);
	draw_rectangle
	(
		x1_windowArea,
		y1_windowArea,
		x2_windowArea,
		y2_windowArea,
		true
	);
	draw_rectangle
	(
		x1_titleArea,
		y1_titleArea,
		x2_titleArea,
		y2_titleArea,
		true
	);
		draw_set_color(c_lime);
	draw_rectangle
	(
		x1_buttonArea,
		y1_buttonArea,
		x2_buttonArea,
		y2_buttonArea,
		true
	);
	
	draw_rectangle
	(
		x1_canvasArea,
		y1_canvasArea,
		x2_canvasArea,
		y2_canvasArea,
		true
	);
		draw_set_color(c_white);
	}
	
	draw_set_color(c_SelectionBG);
	//draw_rectangle(x+1,y+1,x-2+root_WindowWidth,y+16+8,false);
	draw_set_color(c_BaseText);
	draw_set_font(root_fntConsole);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(x+16+10,y+9,winTitle);
}

if	device_mouse_x_to_gui(0) > 0
&&	device_mouse_x_to_gui(0) < display_get_gui_width()
&&	device_mouse_y_to_gui(0) > 0
&&	device_mouse_y_to_gui(0) < display_get_gui_height()
{
	isInsideGUI = true;
} else
{
	isInsideGUI = false;
}

if	device_mouse_x_to_gui(0) > x1_windowArea
&&	device_mouse_x_to_gui(0) < x2_windowArea
&&	device_mouse_y_to_gui(0) > y1_windowArea
&&	device_mouse_y_to_gui(0) < y2_windowArea
{
	isInsideWindow = true;
} else
{
	isInsideWindow = false;
}

if	device_mouse_x_to_gui(0) > x1_buttonArea
&&	device_mouse_x_to_gui(0) < x2_buttonArea
&&	device_mouse_y_to_gui(0) > y1_buttonArea
&&	device_mouse_y_to_gui(0) < y2_buttonArea
{
	isInsideButton = true;
} else
{
	isInsideButton = false;
}

if	device_mouse_x_to_gui(0) > x1_titleArea
&&	device_mouse_x_to_gui(0) < x2_titleArea
&&	device_mouse_y_to_gui(0) > y1_titleArea
&&	device_mouse_y_to_gui(0) < y2_titleArea
&& !isInsideButton
{
	isInsideTitleBar = true;
} else
{
	isInsideTitleBar = false;
}

drawWindowTitle();
drawButton(x+root_WindowWidth-28,y+8,,root_sprIconClose);

draw_sprite_ext(iconTitleBar,theme,x+8,y+8,1,1,0,c_white,1);

if ((isInsideButton) && mouse_check_button(mb_left))
{
	closeIconPanel = root_sprWinInside;
} 
else
{
	closeIconPanel = root_sprWinExterior;
}

if ((isInsideButton) && mouse_check_button_released(mb_left))
{
	instance_destroy();
}

if ((isInsideTitleBar) && mouse_check_button_pressed(mb_left))
{
	draggingWindow = true;
}

if mouse_check_button_released(mb_left)
{
	draggingWindow = false;
}

if (draggingWindow && isInsideGUI)
{
	x = device_mouse_x_to_gui(0)-128;
	y = device_mouse_y_to_gui(0)-8;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(root_fntConsole)
draw_text_ext_transformed_color(x1_canvasArea,y1_canvasArea,txtCanvas,16,root_WindowWidth-8,1,1,0,c_white,c_white,c_white,c_white,1);
display_set_gui_size(game_w,game_h);