/// @description  Set specific properties.

// If the bullet leaves the boundaries of the room, destroy it.
if (x > room_width + 50 || x < -50 || y < -50 || y > room_height + 50)
	instance_destroy();

