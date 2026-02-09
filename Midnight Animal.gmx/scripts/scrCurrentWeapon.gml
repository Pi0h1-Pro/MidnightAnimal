if objPlayer.sprite_index=sprPWalkM16 or objPlayer.sprite_index=sprPWalkM16LSD return 0
if objPlayer.sprite_index=sprPWalkShotgun or objPlayer.sprite_index=sprPWalkShotgunLSD return 1
if objPlayer.sprite_index=sprPWalkPipe return 3 
if objPlayer.sprite_index=sprPWalkClub return 2
if objPlayer.sprite_index=sprPWalkBat return 4
if objPlayer.sprite_index=sprPWalkChain return 34
if objPlayer.sprite_index=sprPWalkKnife return 5
if objPlayer.sprite_index=sprPWalkKnifeSniper return 5
if objPlayer.sprite_index=sprPWalkKnifeFlamethrower return 5
if objPlayer.sprite_index=sprPWalkDoubleBarrel return 6
if objPlayer.sprite_index=sprPWalkSilencer or objPlayer.sprite_index=sprPWalkSilencerLSD return 7
if objPlayer.sprite_index=sprPWalkSword return 8
if objPlayer.sprite_index=sprPWalkKatanaSpecial return 8
if objPlayer.sprite_index=sprPWalkChainsaw return 31
if objPlayer.sprite_index=sprPWalkUzi return 9
if objPlayer.sprite_index=sprPWalkP90 return 46
if objPlayer.sprite_index=sprPWalkMagnum return 10
if objPlayer.sprite_index=sprPWalkScorpion return 11
if objPlayer.sprite_index=sprPWalkMP5 return 12
if objPlayer.sprite_index=sprPWalkPool return 13
if objPlayer.sprite_index=sprPWalkPoolBroke return 14
if objPlayer.sprite_index=sprPWalkAxe return 15
if objPlayer.sprite_index=sprPWalkNightStick return 16
if objPlayer.sprite_index=sprPWalkCrowbar return 17
if objPlayer.sprite_index=sprPWalkMachete return 18
if objPlayer.sprite_index=sprPWalkSledgeHammer return 19
if objPlayer.sprite_index=sprPWalkTrophy return 20
if objPlayer.sprite_index=sprPWalkDrill return 21
if objPlayer.sprite_index=sprPWalkPan return 22
if objPlayer.sprite_index=sprPWalkBoilingPot return 23
if objPlayer.sprite_index=sprPWalkPot return 24
if objPlayer.sprite_index=sprPWalkAK or objPlayer.sprite_index=sprPWalkAKLSD return 26
if objPlayer.sprite_index=sprPWalkHandgun return 27
if objPlayer.sprite_index=sprPWalkThompson return 41
if objPlayer.sprite_index=sprPWalkHeavy return 42
if objPlayer.sprite_index=sprPWalkCrossbow return 43
if objPlayer.sprite_index=sprPWalkFlareGun return 36
if objPlayer.sprite_index=sprPWalkSniper return 29
if objPlayer.sprite_index=sprPWalkSuppressedMG return 32
if objPlayer.sprite_index=sprPWalkSilencedShotgun return 30
if objPlayer.sprite_index=sprPWalkNailGun return 33
if objPlayer.sprite_index=sprPWalkChain return 34
if objPlayer.sprite_index=sprPWalkSilencedUzi return 25
if objPlayer.sprite_index=sprPWalkFlamethrower return 28
if objPlayer.sprite_index=sprPWalkCleaver return 35
if objPlayer.sprite_index=sprPWalkSkateboard return 37
if objPlayer.sprite_index=sprPWalkGrenade return 38
if objPlayer.sprite_index=sprPWalkArm return 39
if objPlayer.sprite_index=sprPWalkBust return 40
if objPlayer.sprite_index=sprPWalkGuitar return 44
if objPlayer.sprite_index=sprPWalkHuntingRifle return 45
if objPlayer.sprite_index=sprPWalkAutoShotgun return 47
if objPlayer.sprite_index=sprPWalkThrow return 49+throwindex
if objPlayer.sprite_index=sprPWalkUnarmed or objPlayer.sprite_index=sprPAttackUnarmed1 or objPlayer.sprite_index=sprPWalkUnarmedLSD or objPlayer.sprite_index=sprPAttackPunch or sprite_index=sprPAttackThrow  return -123

if objPlayer.sprite_index=sprPTurnShotgun return 1

if objPlayer.sprite_index=sprPAttackM16 or objPlayer.sprite_index=sprPAttackM16LSD return 0
if objPlayer.sprite_index=sprPAttackShotgun or objPlayer.sprite_index = sprPWalkShotgunLSD return 1
if objPlayer.sprite_index=sprPAttackClub return 2
if objPlayer.sprite_index=sprPAttackPipe return 3 
if objPlayer.sprite_index=sprPAttackBat return 4
if objPlayer.sprite_index=sprPAttackKnifeSniper return 5
if objPlayer.sprite_index=sprPAttackKnifeFlamethrower return 5
if objPlayer.sprite_index=sprPAttackKnife return 5
if objPlayer.sprite_index=sprPAttackChain return 34
if objPlayer.sprite_index=sprPAttackDoubleBarrel1 or objPlayer.sprite_index=sprPAttackDoubleBarrel2 return 6
if objPlayer.sprite_index=sprPAttackSilencer or objPlayer.sprite_index=sprPAttackSilencerLSD return 7
if objPlayer.sprite_index=sprPAttackSword return 8
if objPlayer.sprite_index=sprPAttackKatanaSpecial return 8
if objPlayer.sprite_index=sprPAttackChainsaw return 31
if objPlayer.sprite_index=sprPAttackUzi return 9
if objPlayer.sprite_index=sprPAttackMagnum return 10
if objPlayer.sprite_index=sprPAttackScorpion return 11
if objPlayer.sprite_index=sprPAttackMP5 return 12
if objPlayer.sprite_index=sprPAttackPool return 13
if objPlayer.sprite_index=sprPAttackPoolBroke return 14
if objPlayer.sprite_index=sprPAttackAxe return 15
if objPlayer.sprite_index=sprPAttackNightStick return 16
if objPlayer.sprite_index=sprPAttackCrowbar return 17
if objPlayer.sprite_index=sprPAttackMachete return 18
if objPlayer.sprite_index=sprPAttackSledgeHammer return 19
if objPlayer.sprite_index=sprPAttackTrophy return 20
if objPlayer.sprite_index=sprPAttackDrill return 21
if objPlayer.sprite_index=sprPAttackPan return 22
if objPlayer.sprite_index=sprPAttackBoilingPot return 23
if objPlayer.sprite_index=sprPAttackPot return 24
if objPlayer.sprite_index=sprPAttackSilencedUzi return 25
if objPlayer.sprite_index=sprPAttackAK or objPlayer.sprite_index=sprPAttackAKLSD return 26
if objPlayer.sprite_index=sprPAttackHandgun return 27
if objPlayer.sprite_index=sprPAttackFlamethrower return 28
if objPlayer.sprite_index=sprPAttackSniper return 29
if objPlayer.sprite_index=sprPAttackSilencedShotgun return 30
if objPlayer.sprite_index=sprPAttackNailgun return 33
if objPlayer.sprite_index=sprPAttackCleaver return 35
if objPlayer.sprite_index=sprPAttackFlareGun return 36
if objPlayer.sprite_index=sprPAttackSuppressedMG return 32
if objPlayer.sprite_index=sprPAttackSkateboard return 37
if objPlayer.sprite_index=sprPAttackGrenade return 38
if objPlayer.sprite_index=sprPAttackArm return 39
if objPlayer.sprite_index=sprPAttackBust return 40
if objPlayer.sprite_index=sprPAttackThompson return 41
if objPlayer.sprite_index=sprPAttackHeavy return 42
if objPlayer.sprite_index=sprPAttackCrossbow return 43
if objPlayer.sprite_index=sprPAttackGuitar return 44
if objPlayer.sprite_index=sprPAttackHuntingRifle return 45
if objPlayer.sprite_index=sprPAttackP90 return 46
if objPlayer.sprite_index=sprPAttackAutoShotgun return 47
if objPlayer.sprite_index=sprPAttackThrow return 49+throwindex
if objPlayer.sprite_index=sprPWalkUnarmed or objPlayer.sprite_index=sprPAttackUnarmed1 or objPlayer.sprite_index=sprPWalkUnarmedLSD or objPlayer.sprite_index=sprPAttackPunch or sprite_index=sprPAttackThrow  return -123

