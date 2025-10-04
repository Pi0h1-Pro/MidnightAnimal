d3d_set_projection_ortho(0, 0, view_wview[0], view_hview[0], 0)
if global.combo > 0 {
    if global.combotime > 120 global.combotime = 120
    if global.combotime > 0 {
        global.combotime -= 1
        if global.maskindex = 13 global.combotime += 0.75 else global.combotime += 0.65
    } else {
        if global.combo > 1 {
            global.myscore += (300 + global.combo * 125) * global.combo
            global.comboscore += (300 + global.combo * 125) * global.combo


            if instance_exists(objPlayer) {
                //my_id = instance_create(objPlayer.x, objPlayer.y - 32, objScore)
                //my_id.text = string(global.combo) + "x combo#+" + string((100 + global.combo * 125) * global.combo)
                if global.combo >= 4 SteamSetAchievement("ACH_COMBO_BEGINNER")
                if global.combo >= 6 SteamSetAchievement("ACH_COMBO_INTERMEDIATE")
                if global.combo >= 8 SteamSetAchievement("ACH_COMBO_PRO")
                if global.combo >= 10 SteamSetAchievement("ACH_COMBO_MASTER")
                if global.combo >= 12 SteamSetAchievement("ACH_COMBO_KING")
                global.comboflash = 1
                ds_list_add(global.bonuslist, string(global.combo) + "x combo")
                if global.bonustime < 10 + global.combo * 5 global.bonustime = 10 + global.combo * 5
            }
        }
        global.combo = 0
    }
} else global.combotime = 0
if global.drawscore < global.myscore update = 1
else update = 0
if global.drawscore < global.myscore - 1000 global.drawscore += 500
else {
    if global.drawscore < global.myscore - 200 global.drawscore += 100
    else {
        if global.drawscore < global.myscore - 20 global.drawscore += 20
        else {
            if global.drawscore < global.myscore global.drawscore += 1
        }
    }
}
if instance_number(objEnemy) + instance_number(objEnemyBash) + instance_number(objEnemyBashPolice) + instance_number(objEnemyBashGang) = 0 update = 1
if !instance_exists(objPlayer) update = 1
scorestring = string(global.drawscore) + "pts"
//color2=merge_color(merge_color(c_fuchsia,c_orange,0.5+lengthdir_x(0.5,dir*2.32)),c_white,0.5+lengthdir_x(0.5,dir*3))
color2 = merge_color(c_fuchsia, c_purple, 0.5 + lengthdir_x(0.5, dir))
//color3=merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir))
//color1=merge_color(c_fuchsia,merge_color(c_orange,c_fuchsia,0.5-lengthdir_x(0.5,dir*2.32)),0.75+lengthdir_x(0.25,dir*3))
color1 = merge_color(c_red, c_maroon, 0.5 + lengthdir_x(0.5, dir))
dir += 1 + update * 7
global.dir += 1

draw_set_halign(fa_center)
draw_set_valign(fa_center)
showammo = 0
if instance_exists(objPlayer) {
    if objPlayer.sprite_index = sprPWalkM16 or objPlayer.sprite_index = sprPAttackM16 {
        showammo = 1
        maxammo = 20
    }
    if objPlayer.sprite_index = sprPWalkUzi or objPlayer.sprite_index = sprPAttackUzi {
        showammo = 1
        maxammo = 30
    }
    if objPlayer.sprite_index = sprPWalkAutoShotgun or objPlayer.sprite_index = sprPAttackAutoShotgun {
        showammo = 1
        maxammo = 20
    }
    if objPlayer.sprite_index = sprPWalkScorpion or objPlayer.sprite_index = sprPAttackScorpion {
        showammo = 1
        maxammo = 20
    }
    if objPlayer.sprite_index = sprPWalkMagnum or objPlayer.sprite_index = sprPAttackMagnum {
        showammo = 1
        maxammo = 6
    }
    if objPlayer.sprite_index = sprPWalkSilencedShotgun or objPlayer.sprite_index = sprPAttackSilencedShotgun {
        showammo = 1
        maxammo = 6
    }
    if objPlayer.sprite_index = sprPWalkSuppressedMG or objPlayer.sprite_index = sprPAttackSuppressedMG {
        showammo = 1
        maxammo = 30
    }
    if objPlayer.sprite_index = sprPWalkSilencedUzi or objPlayer.sprite_index = sprPAttackSilencedUzi {
        showammo = 1
        maxammo = 30
    }
    if objPlayer.sprite_index = sprPWalkShotgun or objPlayer.sprite_index = sprPAttackShotgun {
        showammo = 1
        maxammo = 6
    }
    if objPlayer.sprite_index = sprPWalkDoubleBarrel or objPlayer.sprite_index = sprPAttackDoubleBarrel1 or objPlayer.sprite_index = sprPAttackDoubleBarrel2 {
        showammo = 1
        maxammo = 2
    }
    if objPlayer.sprite_index = sprPWalkSilencer or objPlayer.sprite_index = sprPAttackSilencer {
        showammo = 1
        maxammo = 13
    }
    if objPlayer.sprite_index = sprPWalkMP5 or objPlayer.sprite_index = sprPAttackMP5 {
        showammo = 1
        maxammo = 32
    }
    if objPlayer.sprite_index = sprPWalkAK or objPlayer.sprite_index = sprPAttackAK {
        showammo = 1
        maxammo = 30
    }
    if objPlayer.sprite_index = sprPWalkHuntingRifle or objPlayer.sprite_index = sprPAttackHuntingRifle {
        showammo = 1
        maxammo = 5
    }
    if objPlayer.sprite_index = sprPWalkHandgun or objPlayer.sprite_index = sprPAttackHandgun {
        showammo = 1
        maxammo = 17
    }
    if objPlayer.sprite_index = sprPWalkFlamethrower or objPlayer.sprite_index = sprPAttackFlamethrower {
        showammo = 1
        maxammo = 120
    }
    if objPlayer.sprite_index = sprPWalkSniper or objPlayer.sprite_index = sprPAttackSniper {
        showammo = 1
        maxammo = 13
    }
    if objPlayer.sprite_index = sprPWalkNailGun or objPlayer.sprite_index = sprPAttackNailgun {
        showammo = 1
        maxammo = 30
    }

    if global.done {
        if showfinished > 0 showfinished -= 1
        else showfinished = 240
        if showfinished < 121 scorestring = ""
        else scorestring = ""
        ammostring = ""
        if instance_exists(objPlayerBiker) or instance_exists(objPlayerBikerHouse) ammostring = "LEAVE THE AREA"
        if ammoy < 20 ammoy += 1
        else ammoy = 20
    }

} else {
    if instance_exists(objPlayerDead) {
        scorestring = "YOU'RE DEAD."
        if global.xbox = 0 ammostring = "PRESS " + global.restartkey + " TO RESTART."
        else ammostring = "[START] TO RESTART"
        if ammoy < 20 ammoy += 1
        else ammoy = 20
    }
}

finish = 0

//tutorial text in trainstation
if room = rmTrainstationEntrance or room = rmTrainstationDownstairs or room = rmAlley {
    if instance_exists(objPlayer) {
        draw_set_font(fntSubtitles)
        finish = 1
        if global.xbox = 1 finishstring = "[LEFT MOUSE] TO LOOK AROUND"
        else finishstring = "[SHIFT] TO LOOK FURTHER"
        if instance_exists(objWeapon) {
            if global.xbox = 1 finishstring = "[LEFT TRIGGER] TO TAKE WEAPON"
            else finishstring = "[RIGHT MOUSE] TO PICK UP WEAPON"
        }
        if objPlayer.sprite_index = sprPWalkUnarmed or objPlayer.sprite_index=sprPAttackUnarmed1 or objPlayer.sprite_index = sprPAttackPunch nothing = 1
        else {
            if room = rmTrainstationDownstairs {
                if global.xbox = 1 finishstring = "[LEFT TRIGGER] TO THROW WEAPON"
                else finishstring = "[RIGHT MOUSE] TO THROW WEAPON"
            } else {
                if global.xbox = 1
                finishstring = "[LEFT MOUSE] TO LOOK AROUND"
                else finishstring = "[SHIFT] TO LOOK FURTHER"
            }
        }
        if instance_exists(objKnockedOut) or instance_exists(objHoboKnockedOut) {
            if global.xbox = 1 finishstring = "[A] FOR GROUND KILLS"
            else finishstring = "[SPACE] TO EXECUTE ENEMIES"
        }
    }
    if !instance_exists(objPlayer) or global.done = 1 finish = 0
}
