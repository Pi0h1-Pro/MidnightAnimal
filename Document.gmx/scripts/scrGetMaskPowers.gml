if global.maskindex=3 {with objWeapon {if object_index=objWeapon {image_index=choose(1,12,25) scrGunIndexGetAmmo(image_index)}}} 
if global.maskindex=17 {
sprite_index=sprPWalkCleaver
with objWeapon {if object_index=objWeapon image_index=choose(8,18,19,15,21)}
} 

if global.maskindex=9 energie=1
if global.maskindex=21 energie=2
if global.maskindex=23 sprite_index=sprPWalkDrill
//if global.maskindex=3 {with objWeapon {if object_index=objWeapon image_index=choose(0,1,6)}} 
if global.maskindex=6 {sprite_index=sprPWalkKnife knives=10}
if global.maskindex=17 {with objWeapon {if object_index=objWeapon image_index=choose(2,3,4,5)}} 
if global.maskindex=5 {sprite_index=sprPWalkNailGun ammo=30}
if global.maskindex=25 {sprite_index=sprPWalkSilencedUzi ammo=30} 
if global.maskindex=15 {sprite_index=sprPWalkFlamethrower ammo=120} 
if global.maskindex=16 sprite_index=sprPWalkKatanaSpecial
if global.maskindex=7 {sprite_index=sprPWalkSniper ammo=13}
if global.maskindex=18 {sprite_index=sprPWalkSuppressedMG ammo=30}
if global.maskindex=12 {sprite_index=sprPWalkSilencedShotgun ammo=6}
if global.maskindex=10 {sprite_index=sprPWalkFlareGun ammo=15}
if global.maskindex=22 {sprite_index=sprPWalkChainsaw}

