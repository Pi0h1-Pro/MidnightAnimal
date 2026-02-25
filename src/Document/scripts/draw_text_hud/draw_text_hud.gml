/// @description  draw_text_hud(x, y, string, xscale, yscale, angle)
/// @param x
/// @param  y
/// @param  string
/// @param  xscale
/// @param  yscale
/// @param  angle
function draw_text_hud(argument0, argument1, argument2, argument3, argument4, argument5) {
	draw_set_alpha(0.25)
	draw_set_colour(global.citrinitas)
	draw_text_transformed(argument0 + (global.deathshake / 3 * choose(1, -1)), argument1 + (global.deathshake / 3 * choose(1, -1)), string_hash_to_newline(argument2), argument3, argument4, argument5)
	draw_set_colour(global.rubedo)
	draw_text_transformed(argument0 - (global.deathshake / 3 * choose(1, -1)), argument1 - (global.deathshake / 3 * choose(1, -1)), string_hash_to_newline(argument2), argument3, argument4, argument5)

	draw_set_colour(merge_colour(global.albedo, cflash, hudflash / 10))
	draw_set_alpha(1)
	draw_text_transformed(argument0, argument1, string_hash_to_newline(argument2), argument3, argument4, argument5)



}
