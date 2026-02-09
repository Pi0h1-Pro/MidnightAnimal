/// @description  Regulate life cycle of bullet stream.

// If the bullet stream still exists, gradually depreciate its life.
if (life > 0)
	life -= 1.5;

// If the bullet stream's life falls below 0, destroy it.
if (life <= 0)
	instance_destroy();

if (place_meeting(x, y, objWall) || place_meeting(x, y, objSolid))
	speed = 0;

