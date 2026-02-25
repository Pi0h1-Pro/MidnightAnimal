/// @description Destroy light.
image_index = 1
sound_ps(choose(sndGlass1, sndGlass2))

repeat(64) {
    my_id = instance_create(x, y + 4, objShard)
    my_id.direction = random(360)
    my_id.image_speed = 2 + random(3)
    my_id.image_angle = random(360)
    my_id.image_index = ceil(random(8)) * random(1)
}

with other scrBulletImpact()


