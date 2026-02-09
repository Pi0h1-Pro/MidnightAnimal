/// @description  rotate_towards(name of angle, angle, speed)
/// @param name of angle
/// @param  angle
/// @param  speed
function rotate_towards(argument0, argument1, argument2) {
	target_angle = argument1;
	rotation_speed = argument2;
	argument0 += min(sign(angle_difference(image_angle, target_angle) * rotation_speed), angle_difference(image_angle, target_angle));



}
