/// @description  Control orbit.
if (!instance_exists(objPlayer) || !instance_exists(objPlayer))
	exit;

var cx, cy, crad, clen, cdir, cnext, nx, ny;

cx = objPlayer.x;
cy = objPlayer.y;
crad = point_distance(cx, cy, x, y);

// Find "length" of circle.
clen = crad * pi * 2;

// Find current angle on circle.
cdir = point_direction(cx, cy, x, y);

// Find next angle on circle.
cnext = cdir + vel * 360 / clen;

// Find coordinates of next point.
nx = cx + lengthdir_x(24, cnext - 180);
ny = cy + lengthdir_y(24, cnext - 180);

// Set speed vector to reach that point in next step.
hspeed = nx - x;
vspeed = ny - y;

// Set image angle relative to player.
image_angle = point_direction(x, y, objPlayer.x, objPlayer.y);

