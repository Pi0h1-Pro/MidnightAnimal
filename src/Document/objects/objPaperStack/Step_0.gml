/// @description  Destroy paper stack.
/*if scrMovingPlayerExists() {
    if place_meeting(x - lengthdir_x(12, objPlayer.dir), y - lengthdir_y(12, objPlayer.dir), objPlayer) {
        if scrIsSwinging(objPlayer.sprite_index) and test = 0 {
            if place_meeting(x, y, objEnemy) exit
            
            // Scatter papers.
            repeat(papers) {
                my_id = instance_create(x, y, objFlyingPapers)
                my_id.direction = random(360)
                my_id.image_angle = random(360)
                my_id.speed = 2 + random(2)
                my_id.friction = 0.15
            }
            
            my_id = instance_create(x, y, objMuzzleSmoke)
            my_id.image_angle = irandom(360)
            
            instance_destroy()
        }
    }
}


/* */
/*  */
