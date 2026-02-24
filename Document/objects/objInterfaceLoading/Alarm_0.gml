isFullscreen = loadFile("fullscreen");

if (isFullscreen) {
	with (objGame) {
		event_perform(ev_keyrelease,vk_f11);
	}
}