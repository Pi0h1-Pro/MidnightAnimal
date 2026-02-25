/// @description scrAngleDifference(CurrentAngle,LastAngle)
/// @param CurrentAngle
/// @param LastAngle
function scrAngleDifference(argument0, argument1) {
	var dir;

	dir=argument0-argument1
	if dir>180 dir-=360
	if dir<-180 dir+=360

	return dir



}
