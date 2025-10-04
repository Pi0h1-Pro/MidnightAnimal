//MELEE EXECUTIONS
if argument0 = sprPWalkKnifeSniper or argument0 = sprPAttackKnifeSniper {
    global.usedkill[3] = 1
    return objPKnifeKillSniper
}

if argument0 = sprPWalkKnife or argument0 = sprPAttackKnife {
    global.usedkill[3] = 1
    return choose(objPKnifeKill, objPKnifeKill2)
}
if argument0 = sprPWalkMachete or argument0 = sprPAttackMachete {
    global.usedkill[10] = 1
    return choose(objPMacheteKill, objPMacheteKill2)
}
if argument0 = sprPWalkBoilingPot or argument0 = sprPAttackBoilingPot {
    global.usedkill[14] = 1
    return objPBoilingPotKill
}
if argument0 = sprPWalkSledgeHammer or argument0 = sprPAttackSledgeHammer {
    global.usedkill[11] = 1
    return objPSledgeKill
}

if argument0 = sprPWalkBat or argument0 = sprPAttackBat or argument0 = sprPWalkCrowbar
or argument0 = sprPAttackCrowbar or argument0 = sprPAttackPan or argument0 = sprPWalkPan
or argument0 = sprPAttackPot or argument0 = sprPWalkPot or argument0 = sprPWalkPipe
or argument0 = sprPAttackPipe or argument0 = sprPWalkBag or argument0 = sprPAttackBag
or argument0 = sprPWalkArm or argument0 = sprPAttackArm or argument0 = sprPAttackBust
or argument0 = sprPWalkBust or argument0 = sprPWalkGuitar or argument0 = sprPAttackGuitar
return objPBluntKill

if argument0 = sprPWalkClub or argument0 = sprPAttackClub
return objPClubKill

if argument0 = sprPWalkSkateboard or argument0 = sprPAttackSkateboard
return choose(objPSkateboardKill, objPSkateboardKill2)

if argument0 = sprPWalkAxe or argument0 = sprPAttackAxe {
    global.usedkill[7] = 1
    return objPAxeKill
}
if argument0 = sprPWalkSword or argument0 = sprPAttackSword {
    global.usedkill[4] = 1
    return objPKatanaKill
}
if argument0 = sprPWalkKatanaSpecial or argument0 = sprPAttackKatanaSpecial {
    global.usedkill[4] = 1
    return objPKatanaKill
}
if argument0 = sprPWalkCleaver or argument0 = sprPAttackCleaver
return objPKillCleaver
if argument0 = sprPWalkChainsaw or argument0 = sprPAttackChainsaw
return choose(objPChainsawKill1, objPChainsawKill2)
if argument0 = sprPWalkPoolBroke or argument0 = sprPAttackPoolBroke {
    global.usedkill[6] = 1
    return objPBrokenPoolKill
}
if argument0 = sprPWalkPool or argument0 = sprPAttackPool {
    global.usedkill[5] = 1
    return objPPoolKill
}
if argument0 = sprPWalkDrill or argument0 = sprPAttackDrill {
    global.usedkill[12] = 1
    return objPDrillKill
}
if argument0 = sprPWalkNightStick or argument0 = sprPAttackNightStick {
    global.usedkill[8] = 1
    return objPBluntKillNightStick
}
if argument0 = sprPWalkChain or argument0 = sprPAttackChain
return objPChainKill
if argument0 = sprPWalkKnifeFlamethrower or argument0 = sprPAttackKnifeFlamethrower
or argument0 = sprPWalkFlamethrower or argument0 = sprPAttackFlamethrower {
    global.usedkill[3] = 1
    return objPKnifeKillFlamethrower
}

//UNARMED EXECUTIONS
if (argument0 = sprPWalkUnarmed or argument0=sprPAttackUnarmed1 or argument0 = sprPWalkUnarmedLSD or argument0 = sprPAttackPunch) and global.maskindex = 2
return objTigerKill

//GUN EXECUTIONS
if argument0 = sprPWalkHandgun or argument0 = sprPAttackHandgun {
    if objPlayer.ammo > 0
    return objPKill9mm
    else return objEnemyBash
}
if argument0 = sprPWalkNailGun or argument0 = sprPAttackNailgun {
    if objPlayer.ammo > 0
    return objPKillNailgun
    else return objEnemyBash
}
if argument0 = sprPWalkDW or argument0 = sprPReloadDW {
    if objPlayer.ammo > 0
    return objPKillBeretta
    else return objEnemyBash
}
if argument0 = sprPWalkSilencer or argument0 = sprPAttackSilencer or argument0 = sprPWalkSilencerLSD or argument0 = sprPAttackSilencerLSD {
    if objPlayer.ammo > 0
    return objPKillSilencer
    else return objEnemyBash
}
if argument0 = sprPWalkMagnum or argument0 = sprPAttackMagnum {
    if objPlayer.ammo > 0
    return objPKillMagnum
    else return objEnemyBash
}
if argument0 = sprPWalkM16 or argument0 = sprPAttackM16 or argument0 = sprPWalkM16LSD or argument0 = sprPAttackM16LSD
return objPKillM16
if argument0 = sprPWalkSilencedUzi or argument0 = sprPAttackSilencedUzi {
    if objPlayer.ammo > 0
    return objPKillSilencedUzi
    else return objEnemyBash
}
if argument0 = sprPWalkShotgun or argument0 = sprPAttackShotgun or argument0 = sprPTurnShotgun 
or argument0 = sprPWalkShotgunLSD or argument0 = sprPAttackShotgunLSD
return objPKillShotgun
if argument0 = sprPWalkUzi or argument0 = sprPAttackUzi {
    if objPlayer.ammo > 0
    return objPKillUzi
    else return objEnemyBash
}
if argument0 = sprPWalkP90 or argument0 = sprPAttackP90 {
    if objPlayer.ammo > 0
    return objPKillP90
    else return objEnemyBash
}
if argument0 = sprPWalkMP5 or argument0 = sprPAttackMP5 {
    if objPlayer.ammo > 0
    return objPKillMP5
    else return objEnemyBash
}

//THROW EXECUTIONS
if argument0 = sprPWalkThrow {
    if objPlayer.throwindex = 0 {
        global.usedkill[16] = 1
        return objPScissorKill
    }
    if objPlayer.throwindex = 1 {
        global.usedkill[17] = 1
        return objPBottleKill
    }
    if objPlayer.throwindex = 6 {
        global.usedkill[20] = 1
        return objPDartKill
    }
    if objPlayer.throwindex = 5 {
        global.usedkill[19] = 1
        return objPHammerKill
    }
    if objPlayer.throwindex = 3 {
        global.usedkill[18] = 1
        return objPBrickKill
    }
}
global.test = 1

return objEnemyBash

