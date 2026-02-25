/// @description  scrPlayerThrow(sprite, sound, object, speed)
/// @param sprite
/// @param  sound
/// @param  object
/// @param  speed
function scrPlayerThrow(argument0, argument1, argument2, argument3) {
	sprite_index = argument0
	image_speed = 0.5
	sound_ps(argument1)
	my_id = instance_create(x + lengthdir_x(14, dir + left * -35), y + lengthdir_y(12, dir + left * -35), argument2)
	my_id.speed = argument3
	my_id.direction = dir - 2 + random(4)
	global.shake = 6
	alarm[2] = throw_reload
	thrown = 1



}
