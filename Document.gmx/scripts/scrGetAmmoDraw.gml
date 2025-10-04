global.ammo=-1
global.ammotype=0
if instance_exists(objPlayer) {
if //global.maskindex=6 
objPlayer.sprite_index=sprNicoleWalkCleaver
or objPlayer.sprite_index=sprNicoleThrowKnife
or objPlayer.sprite_index=sprNicoleAttackCleaver
or objPlayer.sprite_index=sprNicoleKillChop
or objPlayer.sprite_index=sprNicoleKillCut
or objPlayer.sprite_index=sprNicoleKillStomp
or objPlayer.sprite_index=sprNicoleComputer
or objPlayer.sprite_index=sprNicoleDrive
or objPlayer.sprite_index=sprNicoleClimbUp
or objPlayer.sprite_index=sprNicoleClimbDown
or objPlayer.sprite_index=sprNicoleDriveOff
or objPlayer.sprite_index=sprNicolePushPig
or objPlayer.sprite_index=sprNicoleShakePig
{global.maxammo=30 global.ammo=objPlayer.knives global.ammotype=6}

if objPlayer.sprite_index=sprPWalkFlareGun {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=8}
if objPlayer.sprite_index=sprPAttackFlareGun {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=8}

if objPlayer.sprite_index=sprPWalkHandgun {global.maxammo=17 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackHandgun {global.maxammo=17 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPKill9mm {global.maxammo=17 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPKillUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkP90 {global.maxammo=50 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackP90 {global.maxammo=50 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPKillP90 {global.maxammo=50 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkAutoShotgun {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackAutoShotgun {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkNailGun {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=7}
if objPlayer.sprite_index=sprPAttackNailgun {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=7}
if objPlayer.sprite_index=sprPKillNailgun {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=7}

if objPlayer.sprite_index=sprPWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
if objPlayer.sprite_index=sprPAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
if objPlayer.sprite_index=sprPTurnShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
if objPlayer.sprite_index=sprPKillShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}

if objPlayer.sprite_index=sprPWalkM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=1}
if objPlayer.sprite_index=sprPAttackM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=1}
if objPlayer.sprite_index=sprPKillM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=1}

if objPlayer.sprite_index=sprPWalkAK {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=1}
if objPlayer.sprite_index=sprPAttackAK {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=1}

if objPlayer.sprite_index=sprPWalkThompson {global.maxammo=50 global.ammo=objPlayer.ammo global.ammotype=1}
if objPlayer.sprite_index=sprPAttackThompson {global.maxammo=50 global.ammo=objPlayer.ammo global.ammotype=1}

if objPlayer.sprite_index=sprPWalkCrossbow {global.maxammo=18 global.ammo=objPlayer.ammo global.ammotype=7}
if objPlayer.sprite_index=sprPAttackCrossbow {global.maxammo=18 global.ammo=objPlayer.ammo global.ammotype=7}

if objPlayer.sprite_index=sprPWalkHeavy {global.maxammo=90 global.ammo=objPlayer.ammo global.ammotype=1}
if objPlayer.sprite_index=sprPAttackHeavy {global.maxammo=90 global.ammo=objPlayer.ammo global.ammotype=1}

if objPlayer.sprite_index=sprPWalkSilencer {global.maxammo=13 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackSilencer {global.maxammo=13 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPKillSilencer {global.maxammo=13 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkSilencedUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackSilencedUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPKillSilencedUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkSilencedShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2
global.magammo=objPlayer.mags}
if objPlayer.sprite_index=sprPAttackSilencedShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2
global.magammo=objPlayer.mags}
if objPlayer.sprite_index=sprPReloadSilencedShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2
global.magammo=objPlayer.mags}

if objPlayer.sprite_index=sprPWalkDW or objPlayer.sprite_index=sprPReloadDW
{global.magammo=objPlayer.mags*64 global.maxammo=64 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkSuppressedMG {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=1
global.magammo=objPlayer.mags*30}
if objPlayer.sprite_index=sprPAttackSuppressedMG {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=1
global.magammo=objPlayer.mags*30}
if objPlayer.sprite_index=sprPReloadSuppressedMG {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=1
global.magammo=objPlayer.mags*30}

if objPlayer.sprite_index=sprPWalkHuntingRifle {global.maxammo=5 global.ammo=objPlayer.ammo global.ammotype=1}
if objPlayer.sprite_index=sprPAttackHuntingRifle {global.maxammo=5 global.ammo=objPlayer.ammo global.ammotype=1}

if objPlayer.sprite_index=sprPWalkSniper {global.maxammo=13 global.ammo=objPlayer.ammo global.ammotype=1
global.magammo=objPlayer.mags*13}
if objPlayer.sprite_index=sprPWalkMagnum {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=1
global.magammo=objPlayer.mags*13}
if objPlayer.sprite_index=sprPAttackSniper {global.maxammo=13 global.ammo=objPlayer.ammo global.ammotype=1
global.magammo=objPlayer.mags*13}
if objPlayer.sprite_index=sprPReloadSniper {global.maxammo=13 global.ammo=objPlayer.ammo global.ammotype=1
global.magammo=objPlayer.mags*13}

if objPlayer.sprite_index=sprPWalkFlamethrower {global.maxammo=150 global.ammo=objPlayer.ammo global.ammotype=3}
if objPlayer.sprite_index=sprPAttackFlamethrower {global.maxammo=150 global.ammo=objPlayer.ammo global.ammotype=3}

if objPlayer.sprite_index=sprPWalkMP5 {global.maxammo=32 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackMP5 {global.maxammo=32 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPKillMP5 {global.maxammo=32 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkScorpion {global.maxammo=45 global.ammo=objPlayer.ammo global.ammotype=0}
if objPlayer.sprite_index=sprPAttackScorpion {global.maxammo=45 global.ammo=objPlayer.ammo global.ammotype=0}

if objPlayer.sprite_index=sprPWalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
if objPlayer.sprite_index=sprPAttackDoubleBarrel1 or objPlayer.sprite_index=sprPAttackDoubleBarrel2 
{global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
}
