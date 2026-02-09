if argument0=sprPTurnShotgun return 1

//PLAYER ATTACK
if argument0=sprPAttackM16 or argument0=sprPoliceWalkM16 or argument0=sprPAttackM16LSD or argument0=sprEHiding or argument0=sprEHidingReload return 0
if argument0=sprPAttackShotgun or argument0=sprPoliceWalkShotgun or argument0=sprPAttackShotgunLSD return 1
if argument0=sprPAttackPipe return 3 
if argument0=sprPAttackClub return 2
if argument0=sprPAttackBat return 4
if argument0=sprPAttackChain return 34
if argument0=sprPAttackKnife return 5
if argument0=sprPAttackDoubleBarrel1 return 6
if argument0=sprPAttackDoubleBarrel2 return 6
if argument0=sprPAttackSilencer or argument0=sprPAttackSilencerLSD return 7
if argument0=sprPAttackSword return 8
if argument0=sprPAttackKatanaSpecial return 8
if argument0=sprPAttackChainsaw return 31
if argument0=sprPAttackUzi return 9
if argument0=sprPAttackSilencedUzi return 25
if argument0=sprPAttackNailgun return 33 
if argument0=sprPAttackSuppressedMG return 32
if argument0=sprPAttackSniper return 29
if argument0=sprPAttackMagnum return 10
if argument0=sprPAttackScorpion return 11
if argument0=sprPAttackMP5 return 12
if argument0=sprPAttackPool return 13
if argument0=sprPAttackPoolBroke return 14
if argument0=sprPAttackAxe return 15
if argument0=sprPAttackNightStick return 16
if argument0=sprPoliceAttackNightStick return 16
if argument0=sprPAttackDrill return 21
if argument0=sprPAttackPan return 22
if argument0=sprPAttackBoilingPot return 23
if argument0=sprPAttackPot return 24
if argument0=sprPAttackMachete return 18
if argument0=sprPAttackSledgeHammer return 19
if argument0=sprPAttackCrowbar return 17
if argument0=sprPAttackAK or argument0=sprPAttackAKLSD return 26
if argument0=sprPAttackHandgun return 27
if argument0=sprPAttackFlareGun return 36
if argument0=sprPAttackFlamethrower return 28
if argument0=sprPAttackCleaver return 35
if argument0=sprPAttackSkateboard return 37
if argument0=sprPAttackGrenade return 38
if argument0=sprPAttackArm return 39
if argument0=sprPAttackBust return 40
if argument0=sprPAttackThompson return 41
if argument0=sprPAttackHeavy return 42
if argument0=sprPAttackCrossbow return 43
if argument0=sprPAttackGuitar return 44
if argument0=sprPAttackHuntingRifle return 45
if argument0=sprPAttackP90 return 46
if argument0=sprPAttackAutoShotgun return 47

if argument0=sprWaiterWalkUzi or argument0=sprWaiterWalkFood or argument0=sprWaiterWalkWine return 9

//PLAYER WALK
if argument0=sprPTurnShotgun return 1
if argument0=sprPWalkM16 or argument0=sprPWalkM16LSD return 0
if argument0=sprPWalkShotgun or argument0=sprPWalkShotgunLSD return 1
if argument0=sprPWalkPipe return 3 
if argument0=sprPWalkClub return 2
if argument0=sprPWalkBat return 4
if argument0=sprPWalkKnife return 5
if argument0=sprPWalkDoubleBarrel return 6
if argument0=sprPWalkSilencer or argument0=sprPWalkSilencerLSD return 7
if argument0=sprPWalkSword return 8
if argument0=sprPWalkKatanaSpecial return 8
if argument0=sprPWalkChainsaw return 31
if argument0=sprPWalkCleaver return 35
if argument0=sprPWalkUzi return 9
if argument0=sprPWalkAutoShotgun return 47
if argument0=sprPWalkP90 return 46
if argument0=sprPWalkChain return 34
if argument=sprPWalkSilencedShotgun return 30
if argument0=sprPWalkSilencedUzi return 25
if argument0=sprPWalkMagnum return 10
if argument0=sprPWalkScorpion return 11
if argument0=sprPWalkMP5 return 12
if argument0=sprPWalkPool return 13
if argument0=sprPWalkPoolBroke return 14
if argument0=sprPWalkAxe return 15
if argument0=sprPWalkNightStick return 16
if argument0=sprPoliceWalkNightStick return 16
if argument0=sprPWalkDrill return 21
if argument0=sprPWalkPan return 22
if argument0=sprPWalkBoilingPot return 23
if argument0=sprPWalkPot return 24
if argument0=sprPWalkMachete return 18
if argument0=sprPWalkSledgeHammer return 19
if argument0=sprPWalkCrowbar return 17
if argument0=sprPWalkAK or argument0=sprPWalkAKLSD return 26
if argument0=sprPWalkHandgun return 27
if argument0=sprPWalkFlamethrower return 28
if argument0=sprPWalkSniper return 29
if argument0=sprPWalkSuppressedMG return 32
if argument0=sprPWalkNailGun return 33
if argument0=sprPWalkFlareGun return 36
if argument0=sprPWalkSkateboard return 37
if argument0=sprPWalkGrenade return 38
if argument0=sprPWalkArm return 39
if argument0=sprPWalkBust return 40
if argument0=sprPWalkThompson return 41
if argument0=sprPWalkHeavy return 42
if argument0=sprPWalkCrossbow return 43
if argument0=sprPWalkGuitar return 44
if argument0=sprPWalkHuntingRifle return 45
if argument0=sprPWalkAutoShotgun return 47

//ENEMY ATTACK
if argument0=sprEAttackM16 return 0
if argument0=sprEAttackThompson return 41
if argument0=sprEAttackShotgun return 1
if argument0=sprEGangAttackShotgun return 1
if argument0=sprEAttackPipe return 3 
if argument0=sprEGangAttackPipe return 3
if argument0=sprEAttackClub return 2
if argument0=sprEAttackBat return 4
if argument0=sprEGangAttackBat return 4
if argument0=sprEAttackKnife  return 5
if argument0=sprEGangAttackKnife return 5
if argument0=sprEAttackDoubleBarrel1 return 6
if argument0=sprEAttackDoubleBarrel2 return 6
if argument0=sprEAttackUzi return 9
if argument0=sprEAttackAK return 26
if argument0=sprEAttackHandgun return 27
if argument0=sprEAttackMachete return 18
if argument0=sprEDodgerAttack return 8
if argument0=sprEGangAttackChain return 34
if argument0=sprEGangAttack9mm return 27
if argument0=sprEGangAttackUzi return 9
if argument0=sprEDodgerDodge return 8
if argument0=sprEAttackAutomaticShotgun return 47

//ENEMY IDLE
if argument0=sprEDrinking return round(random(6))
if argument0=sprEnemySit return 7
if argument0=sprEIdlePee or argument0=sprEIdlePeeStop return 5
if argument0=sprEStandGuard return 0
if argument0=sprEIdleKnife return 5
if argument0=sprETauntPipe return 3
if argument0=sprEnemyCellPhone return 7
if argument0=sprEIdleSmoke return 7
if argument0=sprEGangIdlePipe return 3
if argument0=sprEGangIdleKnife return 5
if argument0=sprEGangIdleSmoke return 5
if argument0=sprEGangIdleBat return 4
if argument0=sprEFiddle return 4

//ENEMY WALK
if argument0=sprEWalkM16 return 0
if argument0=sprEWalkShotgun return 1
if argument0=sprEGangWalkShotgun return 1
if argument0=sprEWalkPipe return 3 
if argument0=sprEGangWalkPipe return 3 
if argument0=sprEWalkClub return 2
if argument0=sprEWalkBat return 4
if argument0=sprEGangWalkBat return 4
if argument0=sprEWalkMachete return 18
if argument0=sprEWalkKnife return 5
if argument0=sprEGangWalkKnife return 5
if argument0=sprEWalkDoubleBarrel return 6
if argument0=sprEWalkAK return 26
if argument0=sprEWalkSilencer return 7
if argument0=sprEWalkUzi return 9
if argument0=sprEWalkHandgun return 27
if argument0=sprEGangWalk9mm return 27
if argument0=sprEGangWalkChain return 34
if argument0=sprEGangWalkUzi return 9
if argument0=sprEDodgerWalk return 8
if argument0=sprEWalkThompson return 41
if argument0=sprEWalkAutomaticShotgun return 47

//ENEMY SEARCH
if argument0=sprESearchM16 return 0
if argument0=sprESearchShotgun return 1
if argument0=sprESearchPipe return 3 
if argument0=sprESearchClub return 2
if argument0=sprESearchBat return 4
if argument0=sprESearchKnife return 5
if argument0=sprESearchDoubleBarrel return 6
if argument0=sprESearchAK return 26
if argument0=sprESearchSilencer return 7
if argument0=sprESearchHandgun return 27

if argument0=sprEGangSearch9mm return 27
if argument0=sprEGangSearchBat return 4
if argument0=sprEGangSearchChain return 34
if argument0=sprEGangSearchKnife return 5
if argument0=sprEGangSearchPipe return 3
if argument0=sprEGangSearchShotgun return 1
if argument0=sprEGangSearchUzi return 9
//if argument0=sprPoliceSearchM16 return 0
//if argument0=sprPoliceSearchShotgun return 1
//if argument0=sprPoliceSearchNightStick return 16 

if argument0=sprPWalkTrophy return 20
if argument0=sprPAttackTrophy return 20
if argument0=sprPWalkThrow return 48+throwindex
if argument0=sprPWalkUnarmed or argument0=sprPAttackUnarmed1 or argument0=sprPWalkUnarmedLSD or argument0=sprPAttackPunch or argument0=sprPAttackThrow  return -123
if argument0=sprPigButcher or argument0=sprPigButcherAttack return -123
return -123
