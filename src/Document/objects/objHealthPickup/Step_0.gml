/// @description  Move towards player.
move_bounce_solid(true)

// Check to see if the player exists.
if scrMovingPlayerExists() {
    
    // Collect health only if the player is low on health.
    if objPlayer.hp < objPlayer.max_hp {
        
        // Move the health pickup towards the player within a certain distance.
        if distance_to_object(objPlayer) < 32 {
            move_towards_point(objPlayer.x,objPlayer.y,5);
        }
    }
}

