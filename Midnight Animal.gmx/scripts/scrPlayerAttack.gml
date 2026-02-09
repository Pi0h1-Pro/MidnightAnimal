if objPlayer.sprite_index = sprPLeaveBag or sprite_index = sprPWalkBossgun or objPlayer.sprite_index = sprPMaskSlip or instance_exists(objMaskMenu) nothing = 1
else {
    sprite = mask_index

    if reload <= 0 {
        if sprite_index = sprPWalkUnarmed or sprite_index = sprPWalkUnarmedLSD {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = choose(sprPAttackPunch, sprPAttackUnarmed1)
            image_index = 0
            image_speed = 0.5
            reload = 1
        }

        if sprite_index = sprPWalkThrow {
            my_id = instance_create(x + lengthdir_x(14, dir + left * -35), y + lengthdir_y(12, dir + left * -35), objThrowingWeapon)
            sound_ps(sndThrow)
            my_id.speed = 15
            my_id.direction = dir - 2 + random(4)
            my_id.image_index = throwindex
            global.usedthrow[throwindex] = 1
            reload = 3
            image_speed = 0.5
            image_index = 1
            sprite_index = sprPAttackThrow
            left = 1
        }

        if sprite_index = sprPWalkGrenade {
            my_id = instance_create(x + lengthdir_x(14, dir + left * -35), y + lengthdir_y(12, dir + left * -35), objGrenade)
            sound_ps(sndThrow)
            my_id.speed = 15
            my_id.direction = dir - 2 + random(4)
            reload = 3
            image_speed = 0.5
            image_index = 1
            sprite_index = sprPAttackGrenade
            left = 1
        }
        
        if sprite_index = sprPWalkKnifeFlamethrower {
            image_speed = 0.5
            image_index = 1
            reload = 12
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackKnifeFlamethrower
        }

        if sprite_index = sprPWalkKnifeSniper {
            image_speed = 0.5
            image_index = 1
            reload = 12
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackKnifeSniper
        }

        if sprite_index = sprPWalkKatanaSpecial {
            image_speed = 0.5
            image_index = 1
            reload = 12
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackKatanaSpecial
            global.usedmelee[4] = 1
        }


        if sprite_index = sprPWalkSword {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackSword
            image_speed = 1
            image_index = 0
            reload = 13
            global.usedmelee[4] = 1
        }

        if sprite_index = sprPWalkChainsaw {
            sprite_index = sprPAttackChainsaw
            image_speed = 0.45
            image_index = 1
            reload = 10
            global.shake = 10
            sound_ps(sndChainsawAttack)
        }

        if sprite_index = sprPWalkCleaver {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackCleaver
            image_speed = 1
            image_index = 0
            reload = 12
        }


        if sprite_index = sprPWalkKnife {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackKnife
            image_speed = 1
            image_index = 0
            reload = 5
            global.usedmelee[3] = 1
        }

        if sprite_index = sprPWalkChain {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackChain
            image_speed = 1
            image_index = 0
            reload = 18
            global.usedmelee[3] = 1
        }
        
        if sprite_index = sprPWalkGuitar {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackGuitar
            image_speed = 1
            image_index = 0
            reload = 20
            global.usedmelee[3] = 1
        }

        if sprite_index = sprPWalkClub {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackClub
            image_speed = 0.7
            image_index = 1
            reload = 11
            global.usedmelee[0] = 1
        }

        if sprite_index = sprPWalkSkateboard {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackSkateboard
            image_speed = 0.7
            image_index = 1
            reload = 13
            global.usedmelee[0] = 1
        }


        if sprite_index = sprPWalkNightStick {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackNightStick
            image_speed = 0.7
            image_index = 1
            reload = 8
            global.usedmelee[8] = 1
        }

        if sprite_index = sprPWalkPipe {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackPipe
            image_speed = 0.7
            image_index = 1
            reload = 18
            global.usedmelee[1] = 1
        }

        if sprite_index = sprPWalkBat {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackBat
            image_speed = 0.7
            image_index = 1
            reload = 13
            global.usedmelee[2] = 1
        }
        
        if sprite_index = sprPWalkArm {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackArm
            image_speed = 0.7
            image_index = 1
            reload = 16
            global.usedmelee[2] = 1
        }
        
        if sprite_index = sprPWalkBust {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackBust
            image_speed = 0.7
            image_index = 1
            reload = 19
            global.usedmelee[2] = 1
        }

        if sprite_index = sprPWalkAxe {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackAxe
            image_speed = 0.35
            image_index = 1
            reload = 23
            global.usedmelee[7] = 1
        }

        if sprite_index = sprPWalkSledgeHammer {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackSledgeHammer
            image_speed = 0.35
            image_index = 1
            reload = 23
            global.usedmelee[11] = 1
        }

        if sprite_index = sprPWalkPool {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackPool
            image_speed = 0.7
            image_index = 1
            reload = 11
            global.usedmelee[5] = 1
        }

        if sprite_index = sprPWalkPoolBroke {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackPoolBroke
            image_speed = 0.7
            image_index = 1
            reload = 10
            global.usedmelee[6] = 1
        }

        if sprite_index = sprPWalkBag {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackBag
            image_index = 1
            image_speed = 0.5
            reload = 20
        }

        if sprite_index = sprPWalkPan {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackPan
            image_index = 1
            image_speed = 0.5
            reload = 15
            global.usedmelee[12] = 1
        }

        if sprite_index = sprPWalkCrowbar {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackCrowbar
            image_index = 1
            image_speed = 0.5
            reload = 15
            global.usedmelee[9] = 1
        }

        if sprite_index = sprPWalkMachete {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackMachete
            image_index = 1
            image_speed = 0.5
            reload = 10
            global.usedmelee[10] = 1
        }

        if sprite_index = sprPWalkPot {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackPot
            image_index = 1
            image_speed = 0.5
            reload = 18
            global.usedmelee[13] = 1
        }

        if sprite_index = sprPWalkBoilingPot {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackBoilingPot
            image_index = 1
            image_speed = 0.5
            repeat(3 + random(2)) {
                my_id = instance_create(x + lengthdir_x(11, dir) - 2 + random(4), y + lengthdir_y(11, dir) - 2 + random(4), objPWater)
                global.mydir = dir
                with my_id move_contact_solid(global.mydir, 10)
                my_id.direction = point_direction(x, y, my_id.x, my_id.y)
                my_id.speed = 8
                my_id.image_angle = my_id.direction
            }
            reload = 18
            global.usedmelee[13] = 1
        }

        if sprite_index = sprPigButcher {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPigButcherAttack
            image_index = 0
            image_speed = 0.5
            reload = 20
        }

        if sprite_index = sprPWalkDrill {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackDrill
            image_index = 1
            image_speed = 0.5
            reload = 15
        }

        if sprite_index = sprPWalkTrophy {
            sound_ps(choose(sndSwing1, sndSwing2))
            sprite_index = sprPAttackTrophy
            image_index = 0
            image_speed = 0.5
            reload = 15
        }
        
        scrPlayerShoot()
        
        mask_index = sprite
        image_angle = 0
    }
}
scrCheckUsedGuns()
scrCheckUsedMelee()
scrCheckUsedThrows()
