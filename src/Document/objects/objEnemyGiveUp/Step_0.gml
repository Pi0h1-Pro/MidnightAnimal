/// @description  Create execution icon.
if c = 0 {
    instance_create(x, y, iconExecution)
    c = 1
}

if scrMovingPlayerExists() {
    icon = instance_nearest(x, y, iconExecution)
    if instance_exists(icon) {
        if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 icon = 1 else icon = 0
    }
}

/// Animate.
if image_index < 5 image_index += 0.15

