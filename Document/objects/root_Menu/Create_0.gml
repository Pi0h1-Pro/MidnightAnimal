function createMenu(instance = root_WindowBase) {
	if !instance_exists(instance) {
		spawn_instance(x,y,instance);
	}
}

window_set_cursor(cr_none);

i = 0;
option[i++] = "New Game"
option[i++] = "Restart Game"
option[i++] = "Continue"
option[i++] = "          "
option[i++] = "Options"
option[i++] = "Quit Game"
i_total = i;
i = 0;
area_x1[i++] = 0;
area_y1[i++] = 0;
area_x2[i++] = 0;
area_y2[i++] = 0;
i = 0;
color_background = c_black;
alpha_background = 0.50;

w_width		= window_get_width();
w_height	= window_get_height();

highlight_option = 0;
isHighlighting = false;

isPaused	= false;

y_distance = 22;
x_option = 16;
y_option = w_height - (sprite_get_height(root_sprLogo)*2) - y_distance * i_total;
c_text = c_ltgray;
c_textHighlight = c_white

x_logo = 16
y_logo = w_height - y_distance - sprite_get_height(root_sprLogo);