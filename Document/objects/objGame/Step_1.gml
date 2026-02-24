if (live_call()) return live_result;
globalvar delta; delta = min(1, (delta_time / (1000000)));

if setToRestart {
	alarm[0] = 10;
	isRestarting = true;
	setToRestart = false;
}

global.displayMouseX = clamp( global.displayMouseX + (window_mouse_get_delta_x()), 0, display_get_width());
global.displayMouseY = clamp( global.displayMouseY + (window_mouse_get_delta_y()), 0, display_get_height());