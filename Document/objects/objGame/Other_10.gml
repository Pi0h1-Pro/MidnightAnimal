if (live_call()) return live_result;
/// @description Update monitor frequency
freq = 60//display_get_frequency();
game_set_speed( freq, 0 );