/// @description  drop_health(random?, chance, number of drops)
/// @param random?
/// @param  chance
/// @param  number of drops
function drop_health(argument0, argument1, argument2) {

	if argument0 = 0 {
	    repeat(argument2) {
	        spawn = instance_create(x, y, objHealthPickup)
	    }
	} else {
	    if round(irandom(argument1)) = 1 {
	        repeat(argument2) {
	            spawn = instance_create(x, y, objHealthPickup)
	        }
	    }
	}




}
