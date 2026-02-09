/// @description  projectile_enemy(speed, spread, critRate, damage)
/// @param speed
/// @param  spread
/// @param  critRate
/// @param  damage
function projectile_enemy(argument0, argument1, argument2, argument3) {
	if (instance_exists(my_id))
	{
		my_id.speed = argument0;
		my_id.spread = argument1;
		my_id.direction = angle - argument1 * accuracy + random((argument1 * 2)) * accuracy;
		my_id.image_angle = my_id.direction;
		my_id.critRate = argument2;
		my_id.damage = argument3 + round((random(argument3) * argument2));
	}



}
