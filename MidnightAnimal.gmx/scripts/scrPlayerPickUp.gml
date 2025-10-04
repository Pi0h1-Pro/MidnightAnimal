//Pick up letter.
if place_meeting(x, y, objToken) {
    with objToken {
        instance_destroy()
        sound_ps(sndToken)
        my_id = instance_create(x, y, objLetterFound)
        my_id.text = '"' + scrGetTokenLetter(letter) + '"'
        global.letter[letter] = 1
    }
    exit
}

//Pick up masks.
if place_meeting(x + lengthdir_x(10, dir), y + lengthdir_y(10, dir), objSecretMask) or place_meeting(x, y, objSecretMask) {
    with objSecretMask {
        global.masks[image_index] = 1
        global.newmask[global.newmasks] = image_index
        global.newmasks += 1
        sound_ps(sndToken)
        my_id = instance_create(x, y, objLetterFound)
        my_id.text = '"' + scrMaskGetName(image_index) + '"'
        instance_destroy()
    }
    exit
}

//Pick up Jake's mask.
if global.masks[24] = 0 {
    if place_meeting(x, y, objCobraDead) {
        with objCobraDead {
            if taken = 0 {
                taken = 1
                global.masks[24] = 1
                global.newmask[global.newmasks] = 24
                global.newmasks += 1
                sound_ps(sndToken)
                my_id = instance_create(x, y, objLetterFound)
                my_id.text = '"' + scrMaskGetName(24) + '"'
            }
        }
        exit
    }
}

//Pick up Carl's mask.
if place_meeting(x, y, objLocustDead) {
    with objLocustDead {
        if taken = 0 {
            taken = 1
            global.masks[23] = 1
            global.newmask[global.newmasks] = 23
            global.newmasks += 1
            sound_ps(sndToken)
            my_id = instance_create(x, y, objLetterFound)
            my_id.text = '"' + scrMaskGetName(23) + '"'
        }
    }
    exit
}

//Pick up Earl.
if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWalrusDead) {
    with objWalrusDead {
        if taken = 0 {
            taken = 1
            global.masks[21] = 1
            global.newmask[global.newmasks] = 21
            global.newmasks += 1
            sound_ps(sndToken)
            my_id = instance_create(x, y, objLetterFound)
            my_id.text = '"' + scrMaskGetName(21) + '"'
        }
    }
    exit
}


release = 0
if reload > 0 reload = 0
if sprite_index = sprPWalkBag
or sprite_index = sprPAttackBag
or sprite_index = sprPWalkBossgun
or sprite_index = sprPLeaveBag
or sprite_index = sprPTakePhone
or global.maskindex = 2
or global.maskindex = 15
or global.maskindex = 19
or global.maskindex = 7
or global.maskindex = 6
exit


lastweapon = scrCurrentWeaponExt(sprite_index)
lastammo = ammo
global.gotweapon = 0
global.exposed = 1

global.test = 0
if sprite_index = sprPWalkUnarmed or argument0=sprPAttackUnarmed1 or sprite_index = sprPWalkUnarmedLSD or sprite_index = sprPAttackPunch noweapon = 1
else noweapon = 0
with objWeapon {
    if global.test = 0 {
        if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 and global.maskindex != 2 {
            if ammo > 0 {
                global.etest = 0
                with objEnemy {
                    if sprite_index = sprEWalkUnarmed or sprite_index = sprEGiveUp nothing = 1
                    else {
                        if alert = 1 global.etest = 1
                    }
                }
                if global.etest = 1 {
                    //my_id = instance_create(x, y - 12, objScore)
                    //my_id.text = "+" + string(60 * global.factor) + "pts"
                    global.myscore += 60 * global.factor
                    ds_list_add(global.bonuslist, "Dangerous Pickup")
                }
            }
            reload = 5
            global.gotweapon = 1
            scrGetWeapon()
            global.test = 1
            objPlayer.ammo = ammo
            sound_ps(sndPickupWeapon)
            instance_destroy()
        }
    }
}


if noweapon = 1 or global.maskindex = 15 or global.maskindex = 7
global.test = 4
else {
    if lastweapon > 49 global.test = 2
}


if lastweapon < 0 exit
if sprite_index = sprPWalkUnarmed or sprite_index = sprPWalkUnarmedLSD exit
switch global.test {
    case 0:
        global.dir = dir
        my_id = instance_create(x, y, objWeaponThrow)
        with my_id move_contact_solid(global.dir, 12)
        sound_ps(sndThrow)
        my_id.speed = 12
        my_id.direction = dir - 5 + random(10)
        my_id.ammo = lastammo
        my_id.image_index = lastweapon
        if instance_exists(objLSD) sprite_index = sprPWalkUnarmedLSD else sprite_index = sprPWalkUnarmed
        release = 1
        break;
    case 1:
        global.dir = dir

        my_id = instance_create(x, y, objWeaponThrow)
        with my_id move_contact_solid(global.dir, 12)
        sound_ps(sndThrow)
        my_id.speed = 12
        my_id.direction = dir - 5 + random(10)
        my_id.ammo = lastammo
        my_id.image_index = lastweapon
        release = 1
        break;
    case 2:
        global.dir = dir + left * -20

        my_id = instance_create(x, y, objThrowingWeapon)
        with my_id move_contact_solid(global.dir, 12)
        sound_ps(sndThrow)
        my_id.speed = 16
        my_id.direction = dir - 5 + random(10)
        my_id.ammo = lastammo
        my_id.image_index = lastweapon - 45
        global.usedthrow[my_id.image_index] = 1
        if global.gotweapon = 0 sprite_index = sprPWalkUnarmed
        release = 1
        break;
}
