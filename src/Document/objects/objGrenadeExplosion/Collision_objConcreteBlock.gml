/// @description Depreciate life.
if index = 8 {
    if other.life > 0 {
        if point_distance(x, y, other.x, other.y) < 16 other.life -= 10
        
        else if point_distance(x, y, other.x, other.y) < 32
        and point_distance(x, y, other.x, other.y) > 16 other.life -= 8
        
        else if point_distance(x, y, other.x, other.y) < 48
        and point_distance(x, y, other.x, other.y) > 32 other.life -= 6
        
        else if point_distance(x, y, other.x, other.y) < 64
        and point_distance(x, y, other.x, other.y) > 48 other.life -= 2
    }
}

