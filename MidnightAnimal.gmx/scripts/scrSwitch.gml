if sprite_index=sprPWalkSniper {sound_play(sndDrawKnife) sprite_index=sprPWalkKnifeSniper exit}
if sprite_index=sprPWalkFlamethrower {sound_play(sndDrawKnife) sprite_index=sprPWalkKnifeFlamethrower exit}
if sprite_index=sprPWalkKnifeSniper {sound_play(sndPickupWeapon) sprite_index=sprPWalkSniper exit}
if sprite_index=sprPWalkKnifeFlamethrower {sound_play(sndPickupWeapon) sprite_index=sprPWalkFlamethrower exit}


if sprite_index!=sprPWalkSniper
or sprite_index!=sprPWalkFlamethrower
or sprite_index!=sprPWalkKnifeSniper
or sprite_index!=sprPWalkKnifeFlamethrower 
exit
