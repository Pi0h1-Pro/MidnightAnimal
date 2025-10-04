if reload > 0 exit
if sprite_index = sprPLeaveBag or sprite_index = sprPTakePhone exit
lastweapon = scrCurrentWeapon()
lastammo = ammo

global.executionx = x
global.executiony = y

if global.maskindex != 2
scrThroatEnemy()
if global.test = 3 exit
global.exposed = 0
release = 0
with objKnockedOut {
    image_xscale = 3 image_yscale = 3
}

global.test = 0
global.drop = 1



if place_meeting(x, y, objKnockedOut) and global.exposed = 0 {
    with objKnockedOut {
        if object_index != objFatKnockedOut and object_index != objInspectorKnockedOut {
            image_xscale = 3
            image_yscale = 3
            if place_meeting(x, y, objPlayer) and global.test = 0 {
                global.test = 2

                //INITIATE EXECUTIONS
                if sprite_index = sprEGetUp or sprite_index = sprPoliceGetUp or sprite_index = sprEGangGetUp
                my_id = instance_create(x, y, scrGetKill(objPlayer.sprite_index))
                
                if sprite_index = sprEGetUpLean or sprite_index = sprEGangGetUpLean {

                    //LEAN EXECUTION

                    //CHAINSAW LEAN KILL
                    if objPlayer.sprite_index = sprPWalkChainsaw
                    my_id = instance_create(x, y, objPKillChainsawLean)

                    //HEAD KICK
                    else {
                        my_id = instance_create(x, y, objPKillLean)
                        my_id.image_angle = angle
                        if my_id.object_index = objPKillLean and sprite_index = sprEGangGetUpLean {
                            my_id.sprite = sprEGangDieLean
                            my_id.maskindex = global.maskindex
                        }
                    }
                }

                //BLUNT KILLS
                if my_id.object_index = objPBluntKill {
                    if objPlayer.sprite_index = sprPWalkCrowbar or objPlayer.sprite_index = sprPAttackCrowbar {
                        global.usedkill[9] = 1 my_id.sprite_index = sprPKillCrowbar
                    }
                    if objPlayer.sprite_index = sprPWalkBat or objPlayer.sprite_index = sprPAttackBat {
                        global.usedkill[2] = 1 my_id.sprite_index = sprPBatKill
                    }
                    if objPlayer.sprite_index = sprPWalkGuitar or objPlayer.sprite_index = sprPAttackGuitar {
                        my_id.sprite_index = sprPKillGuitar
                    }
                    if objPlayer.sprite_index = sprPWalkArm or objPlayer.sprite_index = sprPAttackArm {
                        my_id.sprite_index = sprPKillArm
                    }
                    if objPlayer.sprite_index = sprPWalkBust or objPlayer.sprite_index = sprPAttackBust {
                        my_id.sprite_index = sprPKillBust
                    }
                    if objPlayer.sprite_index = sprPWalkPipe or objPlayer.sprite_index = sprPAttackPipe {
                        global.usedkill[1] = 1 my_id.sprite_index = sprPPipeKill
                    }
                    if objPlayer.sprite_index = sprPWalkPot or objPlayer.sprite_index = sprPAttackPot {
                        global.usedkill[15] = 1 my_id.sprite_index = sprPKillPot
                    }
                    if objPlayer.sprite_index = sprPWalkPan or objPlayer.sprite_index = sprPAttackPan {
                        global.usedkill[13] = 1 my_id.sprite_index = sprPKillPan
                    }

                    //POLICE BLUNT KILL
                    if objPlayer.sprite_index = sprPWalkNightStick or objPlayer.sprite_index = sprPAttackNightStick {
                        my_id.image_angle = angle
                        my_id1 = instance_create(x + lengthdir_x(22, my_id.image_angle), y + lengthdir_x(22, my_id.image_angle), objPoliceHat)
                        my_id1.direction = my_id.image_angle - 10 + random(20)
                        my_id1.speed = 1 + random(2)
                        my_id.bottom = sprPoliceBluntKill
                        my_id.sprite_index = sprPNightStickKill
                    }

                    
                    //GANG BRIEFCASE KILL
                    if objPlayer.sprite_index = sprPWalkBag or objPlayer.sprite_index = sprPAttackBag {
                        my_id.sprite_index = sprPBagKill
                        my_id.image_angle = angle
                        my_id.bottom = sprEGangDieBlunt
                    }
                }

                //TIGER KILL GANG
                my_id.image_angle = angle
                if my_id.object_index = objTigerKill and sprite_index = sprEGangGetUp {
                    my_id.bottom = sprEGangDieTiger
                    my_id.maskindex = global.maskindex
                }

                //NAILGUN KILL
                my_id.image_angle = angle
                if my_id.object_index = objPKillNailgun and sprite_index = sprEGangGetUp {
                    my_id.bottom = sprEGangDieNailgun
                    my_id.maskindex = global.maskindex
                }

                //CHAINSAW KILL GANG 1
                my_id.image_angle = angle
                if my_id.object_index = objPChainsawKill1 and sprite_index = sprEGangGetUp {
                    my_id.bottom = sprEGangDieChainsaw1
                    my_id.maskindex = global.maskindex
                }

                //CHAINSAW KILL GANG 2
                my_id.image_angle = angle
                if my_id.object_index = objPChainsawKill2 and sprite_index = sprEGangGetUp {
                    my_id.bottom = sprEGangDieChainsaw2
                    my_id.maskindex = global.maskindex
                }

                //CHAINSAW KILL GANG LEAN
                my_id.image_angle = angle
                if my_id.object_index = objPKillChainsawLean and sprite_index = sprEGangGetUpLean {
                    my_id.bottom = sprEGangDieChainsawLean
                    my_id.maskindex = global.maskindex
                }

                //BLUNT KILL GANG
                my_id.image_angle = angle
                if my_id.object_index = objPBluntKill and sprite_index = sprEGangGetUp {
                    my_id.bottom = sprEGangDieBlunt
                    my_id.maskindex = global.maskindex
                }

                //CLEAVER KILL GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillCleaver and sprite_index = sprEGangGetUp {
                    my_id.bottom = sprEGangDieCleaver
                    my_id.maskindex = global.maskindex
                }

                //WALL KICK GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillLean and sprite_index = sprEGangGetUpLean {
                    my_id.bottom = sprEGangDieLean
                    my_id.maskindex = global.maskindex
                }

                //BASH POLICE
                my_id.image_angle = angle
                if my_id.object_index = objEnemyBash and sprite_index = sprPoliceGetUp {
                    my_id1 = instance_create(x + lengthdir_x(22, my_id.image_angle), y + lengthdir_x(22, my_id.image_angle), objPoliceHat)
                    my_id1.direction = my_id.image_angle - 10 + random(20)
                    my_id1.speed = 1 + random(2)
                    my_id.sprite_index = sprPAttackBash
                    my_id.bottom = sprPoliceHeadBashed
                    my_id.maskindex = global.maskindex
                }

                //BASH GANG
                my_id.image_angle = angle
                if my_id.object_index = objEnemyBash and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPAttackBash
                    my_id.bottom = sprEGangDieStomp
                    my_id.maskindex = global.maskindex
                }

                //KNIFE GANG
                my_id.image_angle = angle
                if (my_id.object_index = objPKnifeKill or my_id.object_index = objPKnifeKillSniper) and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKillKnife
                    my_id.bottom = sprEGangDieKnife
                    my_id.maskindex = global.maskindex
                }

                //KNIFE 2 GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKnifeKill2 and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKnifeKill
                    my_id.bottom = sprEGangDieKnife
                    my_id.maskindex = global.maskindex
                }

                //KNIFE FLAMETHROWER GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKnifeKillFlamethrower and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKnifeKillFlamethrower
                    my_id.bottom = sprEGangDieKnife
                    my_id.maskindex = global.maskindex
                }

                //9mm GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKill9mm and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKill9mm
                    my_id.bottom = sprEGangDie9mm
                    my_id.maskindex = global.maskindex
                }

                //BERETTA GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillBeretta and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKillBeretta
                    my_id.bottom = sprEGangDie9mm
                    my_id.maskindex = global.maskindex
                }

                //SILENCER GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillSilencer and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKill9mm
                    my_id.bottom = sprEGangDie9mm
                    my_id.maskindex = global.maskindex
                }

                //SILENCED UZI GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillSilencedUzi and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKillSilencedUzi
                    my_id.bottom = sprEGangDieUzi
                    my_id.maskindex = global.maskindex
                }

                //UZI GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillUzi and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKillUzi
                    my_id.bottom = sprEGangDieUzi
                    my_id.maskindex = global.maskindex
                }

                //M16 GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillM16 and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKillM16
                    my_id.bottom = sprEGangDieAssault
                    my_id.maskindex = global.maskindex
                }

                //SHOTGUN GANG
                my_id.image_angle = angle
                if my_id.object_index = objPKillShotgun and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKillShotgun
                    my_id.bottom = sprEGangDieAssault
                    my_id.maskindex = global.maskindex
                }

                //DRILL POLICE
                if my_id.object_index = objPDrillKill and sprite_index = sprEGangGetUp {
                    my_id.sprite_index = sprPKillDrillGang
                    my_id.bottom = sprPKillDrillGang
                    my_id.maskindex = global.maskindex
                }
                
                //DRILL POLICE
                if my_id.object_index = objPDrillKill and sprite_index = sprPoliceGetUp {
                    my_id.sprite_index = sprPKillDrillPolice
                    my_id.bottom = sprPKillDrillGang
                    my_id1 = instance_create(x + lengthdir_x(22, my_id.image_angle), y + lengthdir_x(22, my_id.image_angle), objPoliceHat)
                    my_id1.direction = my_id.image_angle - 10 + random(20)
                    my_id1.speed = 1 + random(2)
                }


                my_id.maskon = global.maskon
                instance_destroy()
            }
            image_xscale = 1
            image_yscale = 1
            scrCheckUsedKills()
        }
    }
    
    with objKnockedOut {
        image_xscale = 1
        image_yscale = 1
    }
    if global.test = 1 {
        if sprite_index = sprPWalkUnarmed or sprite_index = sprPWalkUnarmedLSD or sprite_index = sprPWalkBag or sprite_index = sprPAttackBag nothing = 1
        else {
            my_id = instance_create(objPlayer.x + lengthdir_x(8, objPlayer.dir + 90), objPlayer.y + lengthdir_y(8, objPlayer.dir + 90), objWeaponThrow)
            my_id.image_index = lastweapon
            my_id.direction = dir + 70 + random(40)
            my_id.speed = 1 + random(2)
            my_id.ammo = lastammo
        }
        instance_destroy()
        exit
    }
    if global.test = 2 {
        with objKnockedOut {
            image_xscale = 1
            image_yscale = 1
        }
        instance_destroy()
        exit
    }

}


if place_meeting(x, y, objFatKnockedOut) and global.exposed = 0 and global.maskindex = 2 {
    with objFatKnockedOut {
        image_xscale = 3
        image_yscale = 3
        if place_meeting(x, y, objPlayer) and global.test = 0 {
            global.test = 2
            my_id = instance_create(x, y, objTigerKnee)
            my_id.maskindex = global.maskindex
            my_id.maskon = global.maskon
            my_id.image_angle = angle
            my_id.image_index = 1
            instance_destroy()
        }
    }
}

if place_meeting(x, y, objInspectorKnockedOut) and global.exposed = 0 and global.maskindex = 2 {
    with objInspectorKnockedOut {
        image_xscale = 3
        image_yscale = 3
        if place_meeting(x, y, objPlayer) and global.test = 0 {
            global.test = 2
            my_id = instance_create(x, y, objInspectorHeadKick)
            my_id.maskindex = global.maskindex
            my_id.maskon = global.maskon
            my_id.image_angle = angle
            instance_destroy()
        }
    }
}


if global.test = 1 {
    if sprite_index = sprPWalkUnarmed or sprite_index = sprPWalkUnarmedLSD or sprite_index = sprPWalkBag or sprite_index = sprPAttackBag nothing = 1
    else {
        my_id = instance_create(objPlayer.x + lengthdir_x(8, objPlayer.dir + 90), objPlayer.y + lengthdir_y(8, objPlayer.dir + 90), objWeaponThrow)
        my_id.image_index = lastweapon
        my_id.direction = dir + 70 + random(40)
        my_id.speed = 1 + random(2)
        my_id.ammo = lastammo
    }
    instance_destroy()
    exit
}
if global.test = 2 {
    with objKnockedOut {
        image_xscale = 1
        image_yscale = 1
    }
    instance_destroy()
    exit
}


with objKnockedOut {
    image_xscale = 1
    image_yscale = 1
}
