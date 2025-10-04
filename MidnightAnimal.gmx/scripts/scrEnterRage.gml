if global.maskindex = 8 {

if kills >= 5 {
    if scrIsWalking(sprite_index) {
        if noweapon=0 {
            my_id=instance_create(x,y,objWeaponThrow)
            my_id.direction=pdir-25+random(50)
            my_id.speed=2+random(1)
            my_id.image_index=scrCurrentWeaponExt(sprite_index)
        }
    }
    if sprite_index = sprPWalkUnarmed {
        image_index = 1
        sprite_index = sprPEnterRage
        image_speed = 0.2
    }
}
}
/*
if sprite_index = sprWriterDropJacket {
    if image_index >= 7 and image_index - image_speed < 7 {
        my_id = instance_create(x + lengthdir_x(23, dir - 90 * left), y + lengthdir_y(23, dir - 90 * left), objWriterJacket)
        my_id.direction = dir - 90 * left
        my_id.speed = 1.5
        my_id.image_angle = dir
    }
}

