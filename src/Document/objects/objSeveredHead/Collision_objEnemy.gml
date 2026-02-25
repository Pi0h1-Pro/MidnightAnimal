/// @description Bounce off.
if bled > 50 exit
if other.speed > 0 or other.path_index >= 0 {
    direction = point_direction(objEnemy.x, objEnemy.y, x, y)
    image_angle = direction
    speed = 3
}


