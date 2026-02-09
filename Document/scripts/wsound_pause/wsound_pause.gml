/// @description  wsound_pause()
function wsound_pause() {
	audio_pause_sound(WSOUND.currentsound);
	WSOUND.isPaused = true;



}
