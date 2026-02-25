image_angle += diradd * speed
scrMoveSolidOn()
if !scrPlaceFree(x, y) {
    lastx = x - hspeed lasty = y - vspeed move_bounce_solid(0) x = lastx y = lasty speed *= 0.5
}
scrMoveSolidOff()

dir = image_angle


if speed = 0 {
    if bled = 0 {   
        scrBodyPartBleed()
        my_id = instance_create(x, y, objBloodPool)
        my_id.image_angle = random(360)
        bled = 1 
    }
}


if !scrPlaceFree(x, y) speed = 0


