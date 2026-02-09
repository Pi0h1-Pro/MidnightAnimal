with objPlayer {
    if sprite_index = sprPWalkUnarmed nothing = 1
    else {
        my_id = instance_create(objPlayer.x + lengthdir_x(8, objPlayer.dir - 90), objPlayer.y + lengthdir_y(8, objPlayer.dir - 90), objWeaponThrow)
        my_id.image_index = scrCurrentWeaponExt(sprite_index)
        my_id.direction = dir - 70 - random(40)
        my_id.speed = 1 + random(2)
        my_id.ammo = ammo
        sprite_index = sprPWalkUnarmed
    }
    instance_destroy()
}
