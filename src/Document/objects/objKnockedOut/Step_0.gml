/// @description Kill leaning enemies.
if scrIsLeaning(sprite_index) {
    if instance_exists(objPlayer) {

        // Blunt.
        if scrIsBlunt(objPlayer.sprite_index) {
            if place_meeting(x, y, objPlayer) {

                my_id = instance_create(x, y, objDeadBody)
                if sprite_index = sprEGetUpLean my_id.sprite_index = sprEDeadLeanMelee
                my_id.image_angle = angle
                scrMeleeBlood(x, y)
                if objPlayer.sprite_index = sprPBatKill sound_ps(sndBatHit)
                sound_ps(sndPunch)
                sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
                instance_destroy()

                create_points("FATAL IMPACT +100")
                global.myscore += 100
                global.combo += 1
                global.combotime = 240
                global.shake = 7
            }

            // Decapitation.
        } else if objPlayer.sprite_index = sprPAttackCleaver
        or objPlayer.sprite_index = sprPAttackMachete
        or objPlayer.sprite_index = sprPAttackAxe
        or objPlayer.sprite_index = sprPAttackChainsaw
        or objPlayer.sprite_index = sprPAttackKatanaH1
        or objPlayer.sprite_index = sprPAttackKatanaH2
        or objPlayer.sprite_index = sprPAttackLongSword1
        or objPlayer.sprite_index = sprPAttackLongSword2 {
            if place_meeting(x, y, objPlayer) {
                my_id = instance_create(x, y, objDeadBody)
                if sprite_index = sprEGetUpLean my_id.sprite_index = sprEDeadLeanShotgun
                my_id.image_index = choose(0, 1, 2)
                my_id.image_angle = image_angle

                // Create severed head.
                if my_id.image_index = 1 {
                    my_id = instance_create(x, y, objSeveredHead)
                    my_id.speed = 1 + random(2)
                    my_id.friction = 0.15
                }

                scrMeleeBlood(x, y)
                sound_ps(choose(sndCut1, sndCut2))
                sound_ps(choose(sndDismemberment1, sndDismemberment2, sndDismemberment3, sndDismemberment4))
                instance_destroy()

                create_points("DECAPITATED +100")

                global.myscore += 100
                global.combo += 1
                global.combotime = 240
                global.shake = 7
            }

            // Disembowelment.
        } else if objPlayer.sprite_index = sprPAttackKnife
        or objPlayer.sprite_index = sprPAttackKnifeSlash1
        or objPlayer.sprite_index = sprPAttackKnifeSlash2
        or objPlayer.sprite_index = sprPAttackKitchenKnife
        or objPlayer.sprite_index = sprPAttackBottleBroken {
            if place_meeting(x, y, objPlayer) {
                my_id = instance_create(x, y, objDeadBody)
                if sprite_index = sprEGetUpLean my_id.sprite_index = sprEDeadLeanMelee
                my_id.image_angle = angle
                scrMeleeBlood(x, y)
                sound_ps(choose(sndCut1, sndCut2))
                instance_destroy()

                create_points("EVISCERATED +100")
                global.myscore += 100
                global.combo += 1
                global.combotime = 240
                global.shake = 7
            }
        } else if objPlayer.sprite_index = sprPAttackKatanaV {
            my_id = instance_create(x, y, objDeadBody)
            if sprite_index = sprEGetUpLean my_id.sprite_index = sprEDeadLeanShotgun
            my_id.image_angle = image_angle
            my_id.image_index = 2
            scrMeleeBlood(x, y)
            sound_ps(choose(sndCut1, sndCut2))
            sound_ps(choose(sndDismemberment1, sndDismemberment2, sndDismemberment3, sndDismemberment4))
            instance_destroy()
            global.myscore += 100
            global.combo += 1
            global.combotime = 240
            global.kills += 1
            global.shake = 7
        } else if objPlayer.sprite_index = sprPAttackKatanaThrust {
            my_id = instance_create(x, y, objDeadBody)
            if sprite_index = sprEGetUpLean my_id.sprite_index = sprEDeadLeanMachinegun
            my_id.image_angle = angle
            my_id.image_index = random(3)
            scrMeleeBlood(x, y)
            sound_ps(choose(sndCut1, sndCut2))
            instance_destroy()
            global.myscore += 100
            global.combo += 1
            global.combotime = 240
            global.kills += 1
            global.shake = 7

        } else if scrIsUnarmed(objPlayer.sprite_index) and scrIsSwinging(objPlayer.sprite_index) and global.character = 1 {
            if place_meeting(x, y, objPlayer) {

                my_id = instance_create(x, y, objDeadBody)
                if sprite_index = sprEGetUpLean my_id.sprite_index = sprEHurtLeanMelee
                my_id.image_angle = angle
                sound_ps(sndDoorHit)
                sound_ps(choose(sndPunch, sndPunch2, sndPunch3, sndPunch1))
                instance_destroy()

                create_points("INCAPACITATED +100")
                global.myscore += 100
                global.combo += 1
                global.combotime = 240
                global.shake = 7
            }
        }
    }

}

if image_speed > 0 exit
scrMoveSolidOn()
if !place_free(x, y) {
    if speed > 0 {
        move_outside_solid(direction - 180, 8)
    } else {
        if place_free(x + lengthdir_x(7, direction - 180), y + lengthdir_y(7, direction - 180)) {
            dir = direction
            if sprite_index = sprEGetUp sprite_index = sprEGetUpLean
            direction = round(direction * (1 / 90)) * 90
            image_angle = direction - 180
            if place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)) {
                direction = dir
                if sprite_index = sprEGetUpLean sprite_index = sprEGetUp
            }
        }
    }
    speed = 0
} else {
    if !place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)) {
        move_contact_solid(direction, 8)
        dir = direction
        if sprite_index = sprEGetUp sprite_index = sprEGetUpLean
        direction = round(direction * (1 / 90)) * 90
        image_angle = direction - 180
        if place_free(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction)) {
            direction = dir
            if sprite_index = sprEGetUpLean sprite_index = sprEGetUp
        }
    }
}

scrMoveSolidOff()

angle = direction

/// Create execution icon.
if c = 0 {
    instance_create(x, y, iconExecution)
    c = 1
}

if scrMovingPlayerExists() {
    icon = instance_nearest(x, y, iconExecution)
    if instance_exists(icon) {
        if point_distance(x, y, objPlayer.x, objPlayer.y) < 32 icon = 1 else icon = 0
    }
}

