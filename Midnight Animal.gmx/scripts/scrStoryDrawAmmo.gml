d3d_set_projection_ortho(0,0,view_wview[0],view_hview[0],0)
showammo=0
if instance_exists(objPlayer) and !instance_exists(objPhoneConversation) {
if objPlayer.sprite_index=sprPWalkM16 or objPlayer.sprite_index=sprPAttackM16 {
showammo=1
maxammo=20
} 
if objPlayer.sprite_index=sprPWalkUzi or objPlayer.sprite_index=sprPAttackUzi {
showammo=1
maxammo=30
} 
if objPlayer.sprite_index=sprPWalkAutoShotgun or objPlayer.sprite_index=sprPAttackAutoShotgun {
showammo=1
maxammo=20
} 
if objPlayer.sprite_index=sprPWalkP90 or objPlayer.sprite_index=sprPAttackP90 {
showammo=1
maxammo=50
} 
if objPlayer.sprite_index=sprPWalkScorpion or objPlayer.sprite_index=sprPAttackScorpion {
showammo=1
maxammo=20
} 
if objPlayer.sprite_index=sprPWalkMagnum or objPlayer.sprite_index=sprPAttackMagnum {
showammo=1
maxammo=6
} 
if objPlayer.sprite_index=sprPWalkSilencedShotgun or objPlayer.sprite_index=sprPAttackSilencedShotgun {
showammo=1
maxammo=6
}
if objPlayer.sprite_index=sprPWalkSuppressedMG or objPlayer.sprite_index=sprPAttackSuppressedMG {
showammo=1
maxammo=30
}
if objPlayer.sprite_index=sprPWalkSilencedUzi or objPlayer.sprite_index=sprPAttackSilencedUzi {
showammo=1
maxammo=30
} 
if objPlayer.sprite_index=sprPWalkShotgun or objPlayer.sprite_index=sprPAttackShotgun {
showammo=1
maxammo=6
} 
if objPlayer.sprite_index=sprPWalkDoubleBarrel or objPlayer.sprite_index=sprPAttackDoubleBarrel1 or objPlayer.sprite_index=sprPAttackDoubleBarrel2  {
showammo=1
maxammo=2
}
if objPlayer.sprite_index=sprPWalkSilencer or objPlayer.sprite_index=sprPAttackSilencer {
showammo=1
maxammo=13
} 
if objPlayer.sprite_index=sprPWalkMP5 or objPlayer.sprite_index=sprPAttackMP5 {
showammo=1
maxammo=32
} 
if objPlayer.sprite_index=sprPWalkAK or objPlayer.sprite_index=sprPAttackAK {
showammo=1
maxammo=30
}
if objPlayer.sprite_index = sprPWalkHuntingRifle or objPlayer.sprite_index = sprPAttackHuntingRifle {
        showammo = 1
        maxammo = 5
    }
if objPlayer.sprite_index=sprPWalkHandgun or objPlayer.sprite_index=sprPAttackHandgun {
showammo=1
maxammo=17
}
if objPlayer.sprite_index=sprPWalkFlamethrower or objPlayer.sprite_index=sprPAttackFlamethrower {
showammo=1
maxammo=120
}
if objPlayer.sprite_index=sprPWalkSniper or objPlayer.sprite_index=sprPAttackSniper {
showammo=1
maxammo=13
}
if objPlayer.sprite_index=sprPWalkNailGun or objPlayer.sprite_index=sprPAttackNailgun {
showammo=1
maxammo=30
}
/*
if showammo=1 and objPlayer.ammo>0 {ammostring=string(objPlayer.ammo)+" rnds" if ammoy<16 ammoy+=4 else ammoy=20} 
   else {ammostring="EMPTY" if instance_number(objEnemy)+instance_number(objKnockedOut)>0 {if ammoy>-32 ammoy-=1}}
*/
//if showammo=1 and objPlayer.ammo>0 {ammostring="" if ammoy<16 ammoy+=4 else ammoy=20} 
   //else {ammostring="" if instance_number(objEnemy)+instance_number(objKnockedOut)>0 {if ammoy>-32 ammoy-=1}}
   
if instance_exists(objPlayerBiker) or instance_exists(objPlayerBikerHouse) {
if room=rmHideout or room=rmJanitors nothing=1 else {
if objPlayer.ammo>0 and (instance_exists(objEnemy) or instance_exists(objECrawl) or instance_exists(objBoss) or instance_exists(objKnockedOut)) {showammo=1 ammostring=string(objPlayer.ammo)+" KNIVES"} else {ammostring="NO KNIVES!" showammo=0}
}

}
}
scorestring=global.drawscore
if instance_exists(objPlayerDead) {
if room=rmSequence12b or room=rmSequence12c nothing=1 else {
ammostring="PRESS "+global.restartkey+" TO RESTART." 
scorestring="YOU'RE DEAD."
showammo=1
}
}
/*
if showammo=1 {

draw_set_valign(fa_top)
draw_set_font(fntAmmo)
draw_set_color(merge_color(c_white,c_silver,0.25+lengthdir_x(0.25,dir*4)))
draw_set_halign(fa_left)
//draw_text_transformed(8+1,view_hview[0]-44+1,ammostring,1,1,0)
draw_set_halign(fa_right)
//draw_text_transformed(view_hview[0]-8+1,view_hview[0]+32+1,ammostring,1,1,0)
draw_set_color(merge_color(c_red,c_aqua,0.25+lengthdir_x(0.25,dir*4)))
dir+=8
draw_set_halign(fa_left)
draw_text_transformed(8,view_hview[0]-44,ammostring,1,1,0)
draw_set_halign(fa_right)
draw_text_transformed(view_hview[0]-8,view_hview[0]+32,ammostring,1,1,0)
}

