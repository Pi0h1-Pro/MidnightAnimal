/// @description  Rotate.
image_angle += 1

// Set coordinates to player.
if scrMovingPlayerExists() {
    x = objPlayer.x
    y = objPlayer.y
}

// If the life of the shield is depreciated, destroy it.
if life <= 0 instance_destroy()

