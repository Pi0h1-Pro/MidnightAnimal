/// @description  create_thought_damaged( bg colour, text colour, scale, duration, angle)
/// @param  bg colour
/// @param  text colour
/// @param  scale
/// @param  duration
/// @param  angle
function create_thought_damaged(argument0, argument1, argument2, argument3, argument4) {
	th = instance_create(x, y, objThoughtFlashDamaged)
	th.bg_colour = argument0
	th.text_colour = argument1
	th.scale = argument2
	th.duration =  argument3
	th.angle = argument4



}
