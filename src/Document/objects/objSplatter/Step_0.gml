/// @description  Thin out the blood as it spreads
image_xscale -= sizeChange
image_yscale  = image_xscale

blood_step()

// I also decided to fade the blood out by a random percentage as it spreads
// These values seemed to feel right
if movSpd > 0 image_alpha -= random_range(0.05, 0.1)

// Slow down the blood with friction
movSpd = approach(movSpd, 0, fric)

/* I decided to draw the blood to the surface here
// This isn't really necessary, you could put this somewhere else
if (instance_exists(objSurfacer)) {
    surface_set_target(objSurfacer.surf)
    draw_sprite_ext(sprSplatter, 0, x * 2 - 2 + random(4), y * 2 - 2 + random(4), image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha)
    surface_reset_target()  
}
*/

// Once the blood thins away to nothing, destroy it
// Destroy self
if image_xscale <= 0 instance_destroy()

/* */
/*  */
