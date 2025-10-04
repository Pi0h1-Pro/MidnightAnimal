global.shake = 10 + random(5)
objEffector.amp = 30

count = 32//random_range(4, 32)

repeat(count) {
    my_id = instance_create(argument0 - 12 + random(24), argument1 - 12 + random(24), objSplatter)
    my_id.direction = random(360)
    my_id.speed = 2 + random(2)
}

repeat(6) {
    my_id = instance_create(argument0, argument1, objSplat)
    my_id.direction = random(360)
    my_id.speed = 2 + random(2)
}

repeat(5) {
    my_id = instance_create(argument0, argument1, objSmudge)
    my_id.direction = random(360)
    my_id.speed = 3 + random(3)
    my_id.image_angle = my_id.direction
}

repeat(3) {
    my_id = instance_create(argument0 - 12 + random(24), argument1 - 12 + random(24), objBigBlood)
}

repeat(2 + random(3)) {
    my_id = instance_create(argument0 + lengthdir_x(17, image_angle) - 1 + random(2), argument1 + lengthdir_y(17, image_angle) - 1 + random(2), objBloodSquirt)
    my_id.image_angle = image_angle - 120 + random(240)
}

