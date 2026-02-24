if (live_call()) return live_result;
/// @description Toggle fullscreen

fullscreen=!fullscreen;

if !fullscreen {
	event_user(2);
} else {
	event_user(1);
}

saveFile("fullscreen",fullscreen);