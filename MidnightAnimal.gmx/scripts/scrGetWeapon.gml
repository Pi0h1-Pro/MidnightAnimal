if image_index=0 {if instance_exists(objLSD) objPlayer.sprite_index=sprPWalkM16LSD else objPlayer.sprite_index=sprPWalkM16}
if image_index=1 {if instance_exists(objLSD) objPlayer.sprite_index=sprPWalkShotgunLSD else objPlayer.sprite_index=sprPWalkShotgun}
if image_index=2 objPlayer.sprite_index=sprPWalkClub
if image_index=3 objPlayer.sprite_index=sprPWalkPipe
if image_index=4 objPlayer.sprite_index=sprPWalkBat
if image_index=5 objPlayer.sprite_index=sprPWalkKnife
if image_index=6 objPlayer.sprite_index=sprPWalkDoubleBarrel
if image_index=7 {if instance_exists(objLSD) objPlayer.sprite_index=sprPWalkSilencerLSD else objPlayer.sprite_index=sprPWalkSilencer}
if image_index=8 objPlayer.sprite_index=sprPWalkKatanaSpecial
if image_index=9 objPlayer.sprite_index=sprPWalkUzi
if image_index=10 objPlayer.sprite_index=sprPWalkMagnum
if image_index=11 objPlayer.sprite_index=sprPWalkScorpion
if image_index=12 objPlayer.sprite_index=sprPWalkMP5
if image_index=13 objPlayer.sprite_index=sprPWalkPool
if image_index=14 objPlayer.sprite_index=sprPWalkPoolBroke
if image_index=15 objPlayer.sprite_index=sprPWalkAxe
if image_index=16 objPlayer.sprite_index=sprPWalkNightStick
if image_index=17 objPlayer.sprite_index=sprPWalkCrowbar
if image_index=18 objPlayer.sprite_index=sprPWalkMachete
if image_index=19 objPlayer.sprite_index=sprPWalkSledgeHammer
if image_index=20 objPlayer.sprite_index=sprPWalkTrophy
if image_index=21 objPlayer.sprite_index=sprPWalkDrill
if image_index=22 objPlayer.sprite_index=sprPWalkPan
if image_index=23 objPlayer.sprite_index=sprPWalkBoilingPot
if image_index=24 objPlayer.sprite_index=sprPWalkPot
if image_index=25 objPlayer.sprite_index=sprPWalkSilencedUzi
if image_index=26 {if instance_exists(objLSD) objPlayer.sprite_index=sprPWalkAKLSD else objPlayer.sprite_index=sprPWalkAK}
if image_index=27 objPlayer.sprite_index=sprPWalkHandgun
if image_index=28 objPlayer.sprite_index=sprPWalkFlamethrower
if image_index=29 objPlayer.sprite_index=sprPWalkSniper
if image_index=30 objPlayer.sprite_index=sprPWalkSilencedShotgun
if image_index=31 objPlayer.sprite_index=sprPWalkChainsaw
if image_index=32 objPlayer.sprite_index=sprPWalkSuppressedMG
if image_index=33 objPlayer.sprite_index=sprPWalkNailGun
if image_index=34 objPlayer.sprite_index=sprPWalkChain
if image_index=35 objPlayer.sprite_index=sprPWalkCleaver
if image_index=36 objPlayer.sprite_index=sprPWalkFlareGun
if image_index=37 objPlayer.sprite_index=sprPWalkSkateboard
if image_index=38 objPlayer.sprite_index=sprPWalkGrenade
if image_index=39 objPlayer.sprite_index=sprPWalkArm
if image_index=40 objPlayer.sprite_index=sprPWalkBust
if image_index=41 objPlayer.sprite_index=sprPWalkThompson
if image_index=42 objPlayer.sprite_index=sprPWalkHeavy
if image_index=43 objPlayer.sprite_index=sprPWalkCrossbow
if image_index=44 objPlayer.sprite_index=sprPWalkGuitar
if image_index=45 objPlayer.sprite_index=sprPWalkHuntingRifle
if image_index=46 objPlayer.sprite_index=sprPWalkP90
if image_index=47 objPlayer.sprite_index=sprPWalkAutoShotgun
if image_index>48 {objPlayer.sprite_index=sprPWalkThrow objPlayer.throwindex=image_index-49}
if image_index>=0 global.flexibility[image_index]=1
global.barehanded=0
