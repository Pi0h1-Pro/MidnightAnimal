if floor(random(240)) = 2 {
    fire = instance_create(x, y, objTinyFire)
    fire.image_xscale = 0.2 + random(1)
    fire.image_yscale = image_xscale
}

