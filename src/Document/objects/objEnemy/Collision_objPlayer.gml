/// @description  Push away.
/*if !scrMovingPlayerExists() exit

dir = point_direction(other.x, other.y, x, y)
if point_distance(x, y, other.x, other.y) < 32 {
    if scrPlaceFree(x + lengthdir_x(32, dir), y + lengthdir_y(32, dir)) {
        x += lengthdir_x(4, dir)
        y += lengthdir_y(4, dir)
    }
}

/* */
/*  */
