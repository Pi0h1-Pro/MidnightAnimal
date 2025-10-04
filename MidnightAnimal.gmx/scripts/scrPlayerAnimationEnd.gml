image_speed = 0
if sprite_index = sprPUnlockDoor {
    my_id = instance_create(x, y, objPlayerMouse)
    my_id.ammo = ammo
    global.maskon = 1
    my_id.maskon = 1
    instance_destroy()
    exit
}

//Parker screen flash.
if sprite_index = sprPEnterRage {
    sprite_index=sprPWalkUnarmed
    image_speed=0
    objEffector.whitealpha=1
    with objBackgroundColor instance_destroy()
    instance_create(0,0,objBGStorm)
    //if round(random(140)) = 2 {
    //brus = 2 + floor(random(8))
    //if objEffector.brus < brus objEffector.brus = brus
//}
}

if sprite_index = sprPHeadExplode {
    instance_destroy()
    objEffector.brus = 10
    with objDreamPlayer {
        alarm[0] = 100
    }
    exit
}
if sprite_index = sprPigButcherAttack {
    sprite_index = sprPigButcher left = -left
}
if sprite_index = sprPAttackKnifeSniper {
    sprite_index = sprPWalkKnifeSniper
}
if sprite_index = sprPAttackKnifeFlamethrower {
    sprite_index = sprPWalkKnifeFlamethrower
}
if sprite_index = sprPAttackKatanaSpecial {
    sprite_index = sprPWalkKatanaSpecial
}
if sprite_index = sprPAttackHuntingRifle sprite_index = sprPWalkHuntingRifle
if sprite_index = sprPAttackShotgunLSD sprite_index = sprPWalkShotgunLSD
if sprite_index = sprPAttackM16LSD sprite_index = sprPWalkM16LSD
if sprite_index = sprPAttackSilencerLSD sprite_index = sprPWalkSilencerLSD
if sprite_index = sprPAttackAKLSD sprite_index = sprPWalkAKLSD
if sprite_index = sprPAttackM16 sprite_index = sprPWalkM16
if sprite_index = sprPAttackAK sprite_index = sprPWalkAK
if sprite_index = sprPAttackHandgun sprite_index = sprPWalkHandgun
if sprite_index = sprPAttackShotgun sprite_index = sprPWalkShotgun
if sprite_index = sprPAttackHeavy sprite_index = sprPWalkHeavy
if sprite_index = sprPAttackThompson sprite_index = sprPWalkThompson
if sprite_index = sprPAttackCrossbow sprite_index = sprPWalkCrossbow
if sprite_index = sprPAttackFlareGun sprite_index = sprPWalkFlareGun
if sprite_index = sprPTurnShotgun sprite_index = sprPWalkShotgun
if sprite_index = sprPAttackFlamethrower {
    sprite_index = sprPWalkFlamethrower sound_play(sndFlamethrowerEnd)
}
if sprite_index = sprPAttackDoubleBarrel1 sprite_index = sprPWalkDoubleBarrel
if sprite_index = sprPAttackDoubleBarrel2 sprite_index = sprPWalkDoubleBarrel
if sprite_index = sprPAttackSilencer sprite_index = sprPWalkSilencer
if sprite_index = sprPAttackUzi sprite_index = sprPWalkUzi
if sprite_index = sprPAttackAutoShotgun sprite_index = sprPWalkAutoShotgun
if sprite_index = sprPAttackP90 sprite_index = sprPWalkP90
if sprite_index = sprPAttackSniper sprite_index = sprPWalkSniper
if sprite_index = sprPAttackSilencedUzi sprite_index = sprPWalkSilencedUzi
if sprite_index = sprPAttackNailgun sprite_index = sprPWalkNailGun
if sprite_index = sprPAttackSuppressedMG sprite_index = sprPWalkSuppressedMG
if sprite_index = sprPAttackSilencedShotgun sprite_index = sprPWalkSilencedShotgun
if sprite_index = sprPAttackMagnum sprite_index = sprPWalkMagnum
if sprite_index = sprPAttackScorpion sprite_index = sprPWalkScorpion
if sprite_index = sprPAttackMP5 sprite_index = sprPWalkMP5

if sprite_index = sprPAttackCrowbar {
    sprite_index = sprPWalkCrowbar left = -left
}
if sprite_index = sprPAttackGuitar {
    sprite_index = sprPWalkGuitar left = -left
}
if sprite_index = sprPAttackPan {
    sprite_index = sprPWalkPan left = -left
}
if sprite_index = sprPAttackPool {
    sprite_index = sprPWalkPool left = -left
}
if sprite_index = sprPAttackPoolBroke sprite_index = sprPWalkPoolBroke
if sprite_index = sprPAttackAxe {
    sprite_index = sprPWalkAxe left = -left
}
if sprite_index = sprPAttackSledgeHammer {
    sprite_index = sprPWalkSledgeHammer left = -left
}
if sprite_index = sprPAttackPot {
    sprite_index = sprPWalkPot left = -left
}
if sprite_index = sprPAttackBoilingPot {
    sprite_index = sprPWalkPot left = -left
}
if sprite_index = sprPAttackMachete {
    sprite_index = sprPWalkMachete left = -left
}
if sprite_index = sprPAttackKnife {
    sprite_index = sprPWalkKnife left = -left
}
if sprite_index = sprPAttackChainsaw {
    sprite_index = sprPWalkChainsaw left = -left
}
if sprite_index = sprPAttackCleaver {
    sprite_index = sprPWalkCleaver
}
if sprite_index = sprPAttackSword {
    sprite_index = sprPWalkSword left = -left
}
if sprite_index = sprPAttackBat {
    sprite_index = sprPWalkBat left = -left
}
if sprite_index = sprPAttackArm {
    sprite_index = sprPWalkArm left = -left
}
if sprite_index = sprPAttackBust {
    sprite_index = sprPWalkBust left = -left
}
if sprite_index = sprPAttackChain {
    sprite_index = sprPWalkChain left = -left
}
if sprite_index = sprPAttackClub {
    sprite_index = sprPWalkClub left = -left
}
if sprite_index = sprPAttackPipe {
    sprite_index = sprPWalkPipe left = -left
}
if sprite_index = sprPAttackPunch {
    if instance_exists(objLSD) sprite_index = sprPWalkUnarmedLSD else sprite_index = sprPWalkUnarmed 
    left = -left
}
if sprite_index = sprPAttackUnarmed1 {
    sprite_index = sprPWalkUnarmed
}
if sprite_index = sprPAttackBag {
    sprite_index = sprPWalkBag
}
if sprite_index = sprPAttackDrill {
    sprite_index = sprPWalkDrill
}
if sprite_index = sprPAttackTrophy {
    sprite_index = sprPWalkTrophy left = -left
}
if sprite_index = sprPAttackNightStick {
    sprite_index = sprPWalkNightStick left = -left
}
if sprite_index = sprPAttackSkateboard {
    sprite_index = sprPWalkSkateboard left = -left
}
/*if sprite_index = sprPAttackThrow {
    if global.maskindex = 6 sprite_index = sprPWalkKnife
    else {if instance_exists(objLSD) sprite_index = sprPWalkUnarmedLSD else sprite_index = sprPWalkUnarmed}
}*/
if sprite_index = sprPAttackGrenade {
    if global.maskindex = 0 sprite_index = sprPWalkGrenade
    else {if instance_exists(objLSD) sprite_index = sprPWalkUnarmedLSD else sprite_index = sprPWalkUnarmed}
}


if sprite_index = sprPMaskSlip {
    if instance_exists(objLSD) sprite_index = sprPWalkUnarmedLSD else sprite_index = sprPWalkUnarmed
    maskon = 1
    global.maskon = 1
    scrSaveFloor()

    //Mask powers.
    if global.maskindex = 0 {
        sprite_index = sprPCockGun
        scrSaveFloor()
    }

    if global.maskindex = 10 {
        sprite_index = sprPWalkFlareGun
        ammo = 30
        scrSaveFloor()
    }
    if global.maskindex = 4 {
        if !instance_exists(objControl) instance_create(x, y, objControl)
        scrSaveFloor()
    }
    if global.maskindex = 9 energie = 1
    if global.maskindex = 21 energie = 2
    if global.maskindex = 5 {
        sprite_index = sprPWalkNailGun
        ammo = 100
        scrSaveFloor()
    }
    if global.maskindex = 6 {
        sprite_index = sprPWalkDW
        ammo = 64
        mags = 100
        scrSaveFloor()
    }
    if global.maskindex = 12 {
        sprite_index = sprPWalkSilencedShotgun
        ammo = 6
        mags = 24
        scrSaveFloor()
    }
    if global.maskindex = 15 {
        sprite_index = sprPWalkFlamethrower
        //if !instance_exists(objSunlight) instance_create(x, y, objSunlight)
        ammo = 300
        scrSaveFloor()
    }
    if global.maskindex = 16 {
        sprite_index = sprPWalkKatanaSpecial
        scrSaveFloor()
    }
    /*if global.maskindex = 6 {
        if room = rmPoliceHQFloor1 sprite_index = sprPWalkNightStick
        else sprite_index = sprPWalkKnife 
        sound_play(sndDrawKnife)
        scrSaveFloor()
    }*/
    if global.maskindex = 23 {
        sprite_index = sprPWalkDrill ammo = 0
        scrSaveFloor()
    }
    if global.maskindex = 18 {
        sprite_index = sprPWalkSuppressedMG
        ammo = 30
        mags = 2
        scrSaveFloor()
    }
    if global.maskindex = 3 {
        if !instance_exists(objLightSystem) instance_create(x, y, objLightSystem)
        if !instance_exists(objPlayerLight) and scrMovingPlayerExists() instance_create(objPlayer.x, objPlayer.y, objPlayerLight)
            scrSaveFloor()

    }
    if global.maskindex = 17 {
        sprite_index = sprPWalkCleaver
        with objWeapon {
            if object_index = objWeapon {
                image_index = choose(2, 3, 4, 5) ammo = 0
            }
            scrSaveFloor()
        }
    }
    if global.maskindex = 25 {
        sprite_index = sprPWalkSilencedUzi global.usedgun[8] = 1 ammo = 120
        scrSaveFloor()
    }
    if global.maskindex = 7 {
        sprite_index = sprPWalkSniper
        ammo = 13
        mags = 2
        scrSaveFloor()
    }
    if global.maskindex = 22 {
        sprite_index = sprPWalkChainsaw 
        sound_play(sndChainsawStart)
        scrSaveFloor()
    }
    if global.maskindex = 13 {
        sprite_index = sprPWalkUnarmedLSD 
        if !sound_isplaying(sndLSDFreak) sound_play(sndLSDFreak)
        if !sound_isplaying(sndLSDBronco) sound_play(sndLSDBronco)
        if !instance_exists(objLSD) instance_create(x, y, objLSD)
        if !instance_exists(objLSDBlend) instance_create(x, y, objLSDBlend)
        sound_play(sndLSDBell)
        global.shake = 10
        scrSaveFloor()
    }
    global.usedmask[global.maskindex] = 1
}
if sprite_index = sprPLeaveBag {
    sprite_index = sprPWalkUnarmed
    global.maskon = 0
}



