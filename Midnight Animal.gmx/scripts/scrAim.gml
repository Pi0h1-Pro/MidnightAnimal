var dist;
if ammo > 0 {
    dist = point_distance(x, y, argument0, argument1)
    if dist > 230 scrChase(path, objPlayer.x, objPlayer.y) //dist > 280
    else {
        speed = 0
        if dist > 50 angle = point_direction(x, y, objPlayer.x, objPlayer.y) //dist > 80
        else angle = scrRotate(angle, point_direction(x, y, argument0, argument1), 12)
        direction = angle
        if reload > 0 reload -= 1
        else {
            if scrIsSearching(sprite_index) sprite_index = scrStopSearch(sprite_index)
            scrEnemyShoot()
        }
        scrChargeSearch(objPlayer.x, objPlayer.y, 4)
    }
}

