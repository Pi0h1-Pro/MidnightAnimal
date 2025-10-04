release = 0
if reload > 0 reload = 0
if objPlayer.sprite_index = sprPWalkBag or sprite_index = sprPWalkBossgun or objPlayer.sprite_index = sprPLeaveBag or sprite_index = sprPTakePhone exit
lastweapon = scrCurrentWeapon()
lastammo = ammo
global.exposed = 0
release = 0


if sprite_index = sprPWalkUnarmed or sprite_index = sprPWalkUnarmedLSD nothing = 1
else {
    my_id = instance_create(objPlayer.x + lengthdir_x(8, objPlayer.dir + 90), objPlayer.y + lengthdir_y(8, objPlayer.dir + 90), objWeaponThrow)
    my_id.image_index = lastweapon
    my_id.direction = dir + 70 + random(40)
    if global.maskindex = 24 my_id.speed = 16 + random(2) else my_id.speed = 9 + random(2)
    my_id.ammo = lastammo
    if instance_exists(objLSD) sprite_index = sprPWalkUnarmedLSD else sprite_index = sprPWalkUnarmed
    mouse_clear(mb_right)
}




global.test = 0
with objWeapon {
    if global.test = 0 {
        if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 {
            if ammo > 0 {
                global.etest = 0
                with objEnemy {
                    if sprite_index = sprEWalkUnarmed or sprite_index = sprEGiveUp nothing = 1
                    else {
                        if alert = 1 global.etest = 1
                    }
                }
                if global.etest = 1 {
                    global.myscore += 60 * global.factor
                    ds_list_add(global.bonuslist, "Dangerous Pickup")
                }
            }
            scrGetWeapon()
            mouse_clear(mb_right)
            objPlayer.ammo = ammo
            sound_play(sndPickupWeapon)
            instance_destroy()
            global.test = 1
        }
    }
}
