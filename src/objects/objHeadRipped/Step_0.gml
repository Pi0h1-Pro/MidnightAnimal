image_angle += speed * diradd * 2
if instance_exists(objBloodPool) {
    if wait < 3 wait += 1
}
if speed > 0 {
    surface_set_target(objSurfacer.surf)
    repeat(2) {
        dir = random(360)
        length = random(4)
        myx = x + lengthdir_x(length, dir)
        myy = y + lengthdir_y(length, dir)
        draw_sprite_ext(sprBloodSpeck, random(10), myx * 2, myy * 2, 2, 2, dir, merge_color(c_red,c_maroon,0.7), 0.8)
    }
    surface_reset_target()
}

if speed = 0 {
    if bled = 0 {   
        my_id = instance_create(x, y, objBloodPool)
        my_id.image_angle = random(360)
        bled = 1 
    }
}


