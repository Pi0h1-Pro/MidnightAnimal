var tempid;

repeat(1 + argument2) {
    my_id = instance_create(argument0, argument1, objSplat)
    my_id.direction = random(360)
    my_id.speed = 2 + random(2)
}
repeat(2 + argument2) {
    my_id = instance_create(argument0, argument1, objSmudge)
    my_id.direction = argument3 - 20 + random(40)
    my_id.speed = 3 + random(3)
    my_id.image_angle = my_id.direction
}

{
    repeat(4) {
        tempid = instance_create(argument0, argument1, objBloodDrop2)
        tempid.speed = 2 + random(1)
        tempid.direction = random(360)
        tempid.image_angle = tempid.direction
    }

    repeat(2) {
        tempid = instance_create(argument0 - 1 + random(2), argument1 - 1 + random(2), objBloodHit)
        tempid.speed = 1 + random(2)
        tempid.friction = 0.2
        tempid.direction = argument2 - 45 + random(90)
        tempid.image_angle = tempid.direction
    }


    if argument7 {
        //show_message("BRAINS!")
        repeat(4) {
            tempid = instance_create(argument0 + lengthdir_x(23, argument2 - 180) - 2 + random(4), argument1 + lengthdir_y(23, argument2 - 180) - 2 + random(4), objBrains2)
            tempid.speed = 2 + random(1)
            tempid.direction = point_direction(argument0, argument1, tempid.x, tempid.y)
            tempid.image_angle = tempid.direction
        }
    }
    repeat(8) {
        tempid = instance_create(argument0 + lengthdir_x(23, argument2 - 180) - 2 + random(4), argument1 + lengthdir_y(23, argument2 - 180) - 2 + random(4), objBrains)
        tempid.speed = 2 + random(1)
        tempid.direction = point_direction(argument0, argument1, tempid.x, tempid.y)
        tempid.image_angle = tempid.direction
    }
}

if argument3 {
    //show_message("SKIN!")
    repeat(3) {
        tempid = instance_create(argument4, argument5, objSkinPiece2)
        tempid.speed = 1 + random(1)
        tempid.direction = argument6 - 20 + random(40)
        tempid.image_angle = tempid.direction
    }
}

if argument8 {
    //show_message("GUTS!")
    repeat(4) {
        tempid = instance_create(argument0, argument1, objIntestine)
        tempid.speed = 1 + random(1)
        tempid.direction = argument2 - 20 - random(40)
        tempid.image_angle = tempid.direction
    }
}

