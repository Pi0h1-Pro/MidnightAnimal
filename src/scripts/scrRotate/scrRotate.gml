/// @description scrRotate(dir,destdir,turnspeed);
/// @param dir
/// @param destdir
/// @param turnspeed
function scrRotate(argument0, argument1, argument2) {
	//dir= current direction, destdir= desired direction, turnspeed= rotation speed
	//returns rotated direction

	var tur_dir, destdir, turnspeed, dir;
	tur_dir = argument0
	destdir = argument1
	turnspeed = argument2

	if (tur_dir > 359) tur_dir = 0
	if (tur_dir < 0) tur_dir = 359
	dir = destdir - tur_dir

	if (dir > 180) dir = -(360 - dir)
	if (dir < -180) dir = 360 + dir

	if (sqrt(sqr(dir)) <= turnspeed) tur_dir += dir else tur_dir += sign(dir) * turnspeed

	return tur_dir




}
