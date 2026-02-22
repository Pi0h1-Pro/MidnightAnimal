if image_index = 70 or image_index = 71 {
    my_id = instance_create(x, y, objBrokenBottle)
    sound_ps(sndBottleBreak)
    instance_destroy()
    exit
}

move_bounce_all(0)
speed*=0.15
sound_ps(sndHitWall)
bounce=1