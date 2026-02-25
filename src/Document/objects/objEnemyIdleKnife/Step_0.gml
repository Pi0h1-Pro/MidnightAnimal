if !instance_exists(objPlayer) exit 
if wait > 0 wait -= 1
else {

if point_distance(x,y,objPlayer.x,objPlayer.y) < 220 {
        if !scrCollisionLineExt(x, y, objPlayer.x, objPlayer.y, 3) {
            my_id = instance_create(x, y, enemyRandom)
            my_id.direction = direction
            my_id.sprite_index = sprEWalkKnife
            my_id.alert = 1
            instance_destroy()
        }
        wait = 15
    }
}

