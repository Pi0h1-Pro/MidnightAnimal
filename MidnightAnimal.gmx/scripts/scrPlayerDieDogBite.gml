with objPlayer {
    sound_play(sndDogAttack)
    pdir = point_direction(global.my_id.x, global.my_id.y, x, y)
    scrMeleeBlood(x, y)
    my_id = instance_create(x, y, objPlayerDead)

    if object_index = objPlayerBiker my_id.sprite_index = sprNicoleDeadDog
    else my_id.sprite_index = sprPBackEaten
    my_id.direction = pdir
    my_id.speed = 2.5 + random(1)
    my_id.image_angle = my_id.direction
    master = my_id

    if object_index = objPlayerBiker
    my_id = instance_create(x + lengthdir_x(24, pdir), y + lengthdir_y(24, pdir), objMCHelmet)
    else my_id = instance_create(x + lengthdir_x(24, pdir), y + lengthdir_y(24, pdir), objMaskDrop)
    my_id.direction = pdir - 40 + random(80)
    my_id.speed = 1.5 + random(1)
    my_id = instance_create(master.x, master.y, objDogBite)
    my_id.image_angle = master.image_angle
    my_id.master = master

    if sprite_index = sprPWalkUnarmed or sprite_index = sprPAttackUnarmed1 or sprite_index = sprPAttackPunch or sprite_index = sprPAttackBash noweapon = 1
    else noweapon = 0
        /*
if noweapon=0 {
my_id=instance_create(x,y,objWeaponThrow)
my_id.direction=pdir-25+random(50)
my_id.speed=2+random(1)
my_id.image_index=scrCurrentWeaponExt(sprite_index)
}
*/
    if sprite_index = sprPAttackBash {
        my_id = instance_create(x, y, objKnockedOut)
        my_id.angle = image_angle
        my_id.type = objEnemy
    }
    instance_destroy()
}
