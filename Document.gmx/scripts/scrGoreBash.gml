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


dir = random(360)

repeat(6) {
    tempid = instance_create(argument0 - 1 + random(2), argument1 - 1 + random(2), objBloodHit)
    tempid.speed = 1 + random(2)
    tempid.friction = 0.2
    tempid.direction = dir - 45 + random(90)
    tempid.image_angle = tempid.direction
}

if argument4 {
    repeat(1 + round(random(1))) {
        tempid = instance_create(argument0 + lengthdir_x(23, argument2 - 180), argument1 + lengthdir_y(23, argument2 - 180), objSkinPiece2)
        tempid.speed = 1 + random(1)
        tempid.direction = point_direction(argument0, argument1, tempid.x, tempid.y)
        tempid.image_angle = tempid.direction
    }
}

if argument3 {
    if round(random(1)) = 0 {
        repeat(2) {
            tempid = instance_create(argument0 + lengthdir_x(23, argument2 - 180), argument1 + lengthdir_y(23, argument2 - 180), objBrains2)
            tempid.speed = 2 + random(1)
            tempid.direction = point_direction(argument0, argument1, tempid.x, tempid.y)
            tempid.image_angle = tempid.direction
        }
    } else {
        repeat(1 + round(random(1))) {
            tempid = instance_create(argument0 + lengthdir_x(23, argument2 - 180), argument1 + lengthdir_y(23, argument2 - 180), objBrainChunk2)
            tempid.speed = 1 + random(0.5)
            tempid.direction = point_direction(argument0, argument1, tempid.x, tempid.y)
            tempid.image_angle = tempid.direction
        }
    }
}

