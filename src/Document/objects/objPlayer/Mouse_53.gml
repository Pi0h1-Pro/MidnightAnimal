/// @description  ABILITY : Blink behaviour.

// Teleportation.
if teleport = true {

    // Check to see if there are any walls at the new position.
    if scrPlaceFree(global.mousex, global.mousey) and !place_meeting(global.mousex, global.mousey, objEnemy) {
    
        if teleporting = false {
        
            // Save this new location and start teleportation sequence.
            xx = global.mousex
            yy = global.mousey
            teleporting = true
            teleport_fade = true
            sound_ps(sndTeleport)
            //my_id = instance_create(xx, yy, objPulseRipple)
            //my_id.depth = -1
            objEffector.blackalpha = 1
        }
    }
}

///Semi-automatic / melee weapons.

if scrIsDisarming() or reload > 0 or teleport = true or global.done = 1 exit

// Melee weapons.
scrPlayerAttackMelee()

// Firearms.
if ammo > 0 and !scrIsReloading(sprite_index) {
    scrPlayerShootSemi()
    scrPlayerCreateBurstFire()
    image_angle = 0
} 

// PIERRETTE: Ready up.
if sprite_index = pierretteWalkUnarmed and ready = 0 {
    sprite_index = pierretteReadyUp
    image_index = 0 
    image_speed = 0.2
    sound_ps(sndPickUpGeneric)
    sound_ps(sndRecharge)
    sound_ps(sndReadyUp)
    ready = 1
}

