/// @description scrPlaceFree(x,y)
/// @param x
/// @param y
function scrPlaceFree(argument0, argument1) {
	// Checks for collision with our typical 'solid' objects.
	if place_meeting(argument0, argument1, _SOLID) return false
    
	return true;



}
