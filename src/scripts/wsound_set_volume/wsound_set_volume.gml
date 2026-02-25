/// @description wsound_set_volume(vol[0-1])
/// @param vol[0-1]
function wsound_set_volume(argument0) {
	audio_emitter_gain(WSOUND.emitter, argument0);



}
