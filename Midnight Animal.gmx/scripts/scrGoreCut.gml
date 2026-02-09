repeat(4 + random(4)) {
    my_id = instance_create(argument0, argument1, objSplat)
    my_id.direction = random(360)
    my_id.speed = 2 + random(2)
}
repeat(4 + random(5)) {
    my_id = instance_create(argument0, argument1, objSmudge)
    my_id.direction = random(360)
    my_id.speed = 3 + random(3)
    my_id.image_angle = my_id.direction
}
repeat(1 + random(2)) {
    my_id = instance_create(argument0 - 12 + random(24), argument1 - 12 + random(24), objBigBlood)
}



dir = argument2
repeat(8) {
    tempid = instance_create(argument0 - 1 + random(2), argument1 - 1 + random(2), objBloodHit)
    tempid.speed = 1 + random(2)
    tempid.friction = 0.2
    tempid.direction = dir - 45 + random(90)
    tempid.image_angle = tempid.direction
}

repeat(4 + round(random(2))) {
    instance_create(argument0 - 7 + random(14), argument1 - 7 + random(14), objSplat)
}

if argument3 {
    repeat(6) {
        tempid = instance_create(argument0, argument1, objIntestine)
        tempid.speed = 1 + random(1)
        tempid.direction = argument2 - 20 - random(40)
        tempid.image_angle = tempid.direction
    }
}


tempid = instance_create(argument0, argument1, objBloodCut)
tempid.direction = argument2
tempid.speed = 1 + random(1)

