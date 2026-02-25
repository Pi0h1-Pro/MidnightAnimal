if index = 8 { 

    if pierretteHasShield(objPlayer.sprite_index) global.blur = 90 else {
        global.shake = 10
        
        // Create the player's dead body.
        my_id = instance_create(x, y, objPlayerDead)
        
        // Create blood.
        repeat(10) {
            my_id = instance_create(x + 16 - random(32), y + 16 - random(32), choose(objFleshChunk, objFleshChunkLarge))
            my_id.direction = point_direction(x, y, my_id.x, my_id.y)
            my_id.speed = 2 + random(3)
            my_id.friction = 0.15
        }
        
        repeat(20) {
            my_id = instance_create(x + 16 - random(32), y + 16 - random(32), choose(objBrains, objIntestine))
            my_id.direction = point_direction(x, y, my_id.x, my_id.y)
            my_id.speed = 2 + random(4)
            my_id.friction = 0.15
        }
        scrExtremeGore(x, y)
        scrExtremeGore(x, y)
        
        // Destroy the player object.
        with other instance_destroy()
    }
}

