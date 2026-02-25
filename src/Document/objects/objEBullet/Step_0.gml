/// @description Set specific properties.

// If the bullet leaves the boundaries of the room, destroy it.
if x > room_width + 50 or x < -50 or y < -50 or y > room_height + 50 instance_destroy()

