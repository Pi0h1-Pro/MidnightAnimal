function game_save_legacy() {

}

function game_load_legacy() {
	room_persistent = false;
	room_restart();
}

function missingVars() {
	hp = 0;
	hit = 0;
	hit_enemy = 0;
}

#macro game_speed game_get_speed(gamespeed_fps)