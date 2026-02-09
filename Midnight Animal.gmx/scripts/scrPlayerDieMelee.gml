global.shake = 10
with objPlayer {
    pdir = point_direction(global.my_id.x, global.my_id.y, x, y)
    if global.my_id.sprite_index = sprPInspectorAttack nothing = 1
    else {
        scrMeleeBlood(x, y)
    }

    my_id = instance_create(x, y, objPlayerDead) {

        //Blunt deaths.
        if global.my_id.sprite_index = sprEAttackClub
        or global.my_id.sprite_index = sprPoliceAttackNightStick
        or global.my_id.sprite_index = sprEGangAttackBat
        or global.my_id.sprite_index = sprEGangAttackChain
        or global.my_id.sprite_index = sprEGangAttackBat
        or global.my_id.sprite_index = sprEGangAttackPipe
        or global.my_id.sprite_index = sprHoboAttack
        or global.my_id.sprite_index = sprEAttackBat
        or global.my_id.sprite_index = sprEAttackPipe {
            if instance_exists(objLSD) sound_play(sndLSDSplat) else sound_play(choose(sndHit, sndHit2, sndHit3, sndHit1))
            my_id.sprite_index = choose(sprPBackBlunt, sprPBackBlunt, sprPFrontBlunt)
        }

        //Slashed deaths.
        if global.my_id.sprite_index = sprEAttackKnife
        or global.my_id.sprite_index = sprEAttackMachete
        or global.my_id.sprite_index = sprEGangAttackKnife
        or global.my_id.sprite_index = sprPantherHitback
        or global.my_id.sprite_index = sprEDodgerAttack
        or global.my_id.sprite_index = sprBodyguardAttack
        or global.my_id.sprite_index = sprBoss2AttackCleaver
        or global.my_id.sprite_index = sprCleaver {
            my_id.sprite_index = sprPBackCut
            //sound_ps(sndHit)
            sound_ps(choose(sndCut1, sndCut2))
        }

        //Punched to death.
        if global.my_id.sprite_index = sprEFatAttack
        or global.my_id.sprite_index = sprEFatAttackLSD
        or global.my_id.sprite_index = sprBoss1Attack {
            my_id.sprite_index = choose(sprPBackBlunt, sprPBackBlunt, sprPFrontBlunt)
            if instance_exists(objLSD) sound_play(sndLSDSplat) else sound_play(choose(sndHit, sndHit2, sndHit3, sndHit1)) sound_ps(sndPunch)
        }

        //Tasered.
        if global.my_id.sprite_index = sprPInspectorAttack {
            my_id.sprite_index = sprPBackElectrified
            sound_ps(sndTaser)
            my_id.image_speed = 0.25
        }

        if global.my_id.sprite_index = sprEAttackClub
        or global.my_id.sprite_index = sprHoboAttack
        or global.my_id.sprite_index = sprEAttackBat
        or global.my_id.sprite_index = sprEAttackPipe
        or global.my_id.sprite_index = sprEGangAttackBat
        or global.my_id.sprite_index = sprEGangAttackChain
        or global.my_id.sprite_index = sprEGangAttackBat
        or global.my_id.sprite_index = sprEGangAttackPipe
        or global.my_id.sprite_index = sprEFatAttack
        or global.my_id.sprite_index = sprEFatAttackLSD
        or global.my_id.sprite_index = sprBoss1Attack
        my_id.image_index = 4 + floor(random(11))
        else my_id.image_index = 2 + floor(random(3))

        my_id.direction = pdir
        my_id.image_angle = my_id.direction
        if object_index = objPlayerBiker or object_index = objMCChopKill or object_index = objMCKnifeKill or object_index = objMCStompKill or object_index = objPlayerBikerHouse {
            if my_id.sprite_index = sprPBackBlunt my_id.sprite_index = sprNicoleDeadBlunt
            if my_id.sprite_index = sprPFrontBlunt my_id.sprite_index = sprNicoleDeadBlunt
            if my_id.sprite_index = sprPBackCut my_id.sprite_index = sprNicoleDeadCut
            if my_id.sprite_index = sprNicoleDeadBlunt or my_id.sprite_index = sprNicoleDeadBlunt or my_id.sprite_index = sprNicoleDeadCut {
                my_id = instance_create(x + lengthdir_x(24, pdir), y + lengthdir_y(24, pdir), objMCHelmet)
                my_id.direction = pdir - 40 + random(80)
                my_id.speed = 1.5 + random(1)
            }
        } else {
            if room = rmTrainstationEntrance or room = rmTrainstationDownstairs {
                nothing = 1
            } else {
                mask = instance_create(x + lengthdir_x(24, pdir), y + lengthdir_y(24, pdir), objMaskDrop)
                mask.direction = pdir - 40 + random(80)
                mask.speed = 1.5 + random(1)
            }
        }
    }
    if sprite_index = sprPAttackBash {
        my_id = instance_create(x, y, objKnockedOut)
        my_id.angle = image_angle
        my_id.type = objEnemy
    }
    instance_destroy()
}
