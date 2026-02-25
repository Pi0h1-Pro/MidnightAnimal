if locked = 1 exit

open = 0
if scrMovingPlayerExists() {
    if point_distance(x, y, objPlayer.x, objPlayer.y) < 48 {
        interact = 1 
        open = 1 
    }
}

target = instance_nearest(x, y, objEnemy)
if target > 0 {
    if point_distance(x + 32, y, target.x, target.y) < 64 open = 1
}

// Opening behaviour.
if open = 1 {
    if image_index < 16 image_index += 1 else image_index = 16 
} else {
    if image_index > 0 image_index -= 1
}

