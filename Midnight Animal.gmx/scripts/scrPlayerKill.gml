//BEGIN ATTACKS
if scrIsSwinging(sprite_index) {
    lastx = x
    lasty = y
    global.spacex = lengthdir_x(12, dir)
    global.spacey = lengthdir_y(12, dir)
    x += global.spacex
    y += global.spacey
    global.my_id = id

    x += lengthdir_x(12, dir)
    y += lengthdir_y(12, dir)

    //Specific kills for Tony.
    if global.maskindex = 2 {
        with objBoss {
            if object_index = objBoss1 {
                if invuln = 0 and(place_meeting(x, y, objPlayer) or place_meeting(x + global.spacex, y + global.spacey, objPlayer)) {
                    edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                    sound_ps(sndDoorHit)
                    my_id = instance_create(x, y, objBoss1Down)
                    my_id.direction = edir - 10 + random(20)
                    my_id.image_angle = my_id.direction
                    my_id.speed = 1.5
                    my_id.friction = 0.1
                    my_id.energie = energie - 1
                    if energie <= 1 my_id.image_index = 1
                    if energie <= 0 {
                        my_id.dead = 1 my_id.wait = 90
                    }
                    instance_destroy()
                }
            }
        }


        with objMiscEnemy {
            if object_index = objWaiter and global.maskindex = 2 and(place_meeting(x, y, objPlayer) or place_meeting(x + global.spacex, y + global.spacey, objPlayer)) {
                if scrCollisionLineExt(x, y, objPlayer.lastx, objPlayer.lasty, 4, objSolid, objSolidCaster, objDoorV, objWall, objWallSoftH) {
                    nothing = 1
                } else {

                    { //mask_index=sprMask objPlayer.x=objPlayer.lastx objPlayer.y=objPlayer.lasty exit}
                        mask_index = sprMask
                        global.shake = 7
                        global.myscore += (200) + 200 * global.factor
                        global.killscore += 200
                        global.boldscore += 200 * global.factor
                        global.combo += 1
                        global.combotime = 240
                        global.killx[global.kills] = x
                        global.killy[global.kills] = y
                        global.kills += 1
                        if global.bonustime < 12 + global.factor * 4 global.bonustime = 12 + global.factor * 4
                        if global.factor = 2 ds_list_add(global.bonuslist, "Exposure")
                        if global.factor = 3 ds_list_add(global.bonuslist, "Double Exposure")
                        if global.factor = 4 ds_list_add(global.bonuslist, "Triple Exposure")
                        if global.factor > 4 ds_list_add(global.bonuslist, "Severe Exposure")
                        edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                        scrMeleeBlood(x, y)

                        edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                        my_id = instance_create(x, y, objDeadBody)
                        my_id.sprite_index = sprWaiterDeadShotgun
                        my_id.image_angle = edir - 10 + random(20)
                        my_id.direction = my_id.image_angle
                        my_id.speed = 1.5 + random(1)
                        if instance_exists(objLSD) sound_ps(sndLSDSplat)
                        else sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
                        sound_ps(sndPunch)
                        instance_destroy()
                    }
                }
            }
            
            if object_index = objEnemyAutoShotgun and scrIsSwinging() and(place_meeting(x, y, objPlayer) or place_meeting(x + global.spacex, y + global.spacey, objPlayer)) {
                if scrCollisionLineExt(x, y, objPlayer.lastx, objPlayer.lasty, 4, objSolid, objSolidCaster, objDoorV, objWall, objWallSoftH) {
                    nothing = 1
                } else {

                    { //mask_index=sprMask objPlayer.x=objPlayer.lastx objPlayer.y=objPlayer.lasty exit}
                        mask_index = sprMask
                        global.shake = 7
                        global.myscore += (200) + 200 * global.factor
                        global.killscore += 200
                        global.boldscore += 200 * global.factor
                        global.combo += 1
                        global.combotime = 240
                        global.killx[global.kills] = x
                        global.killy[global.kills] = y
                        global.kills += 1
                        if global.bonustime < 12 + global.factor * 4 global.bonustime = 12 + global.factor * 4
                        if global.factor = 2 ds_list_add(global.bonuslist, "Exposure")
                        if global.factor = 3 ds_list_add(global.bonuslist, "Double Exposure")
                        if global.factor = 4 ds_list_add(global.bonuslist, "Triple Exposure")
                        if global.factor > 4 ds_list_add(global.bonuslist, "Severe Exposure")
                        edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                        scrMeleeBlood(x, y)

                        edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                        my_id = instance_create(x, y, objDeadBody)
                        my_id.sprite_index = sprEAutomaticShotgunDead
                        if objPlayer.sprite_index = sprPAttackClub
                            or objPlayer.sprite_index = sprPAttackBat
                            or objPlayer.sprite_index = sprPAttackCrowbar
                            or objPlayer.sprite_index = sprPAttackPan
                            or objPlayer.sprite_index = sprPAttackPot
                            or objPlayer.sprite_index = sprPAttackSledgeHammer
                            or objPlayer.sprite_index = sprPigButcherAttack
                            or objPlayer.sprite_index = sprPAttackPipe
                            or objPlayer.sprite_index = sprPAttackPool
                            or objPlayer.sprite_index = sprPAttackChain
                            or objPlayer.sprite_index = sprPAttackSkateboard
                            or objPlayer.sprite_index = sprPAttackBust
                            or objPlayer.sprite_index = sprPAttackArm
                            or objPlayer.sprite_index = sprPAttackGuitar
                            or (global.maskindex = 2 and (objPlayer.sprite_index = sprPAttackPunch or objPlayer.sprite_index = sprPAttackUnarmed1)) 
                        my_id.image_index = 0 else my_id.image_index = choose(1, 2, 3, 4, 5)
                        my_id.image_angle = edir - 10 + random(20)
                        my_id.direction = my_id.image_angle
                        my_id.speed = 1.5 + random(1)
                        if instance_exists(objLSD) sound_ps(sndLSDSplat)
                        else sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
                        sound_ps(sndPunch)
                        instance_destroy()
                    }
                }
            }
        }
    }

    with objDog {
        edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
        if place_meeting(x, y, objPlayer) or place_meeting(x + global.spacex, y + global.spacey, objPlayer) {
                mask_index = sprWeaponMask
                SteamIncStat("Dogs", 1)

                //DOG BLUNT KILL
                if objPlayer.sprite_index = sprPAttackClub
                or objPlayer.sprite_index = sprPAttackBat
                or objPlayer.sprite_index = sprPAttackCrowbar
                or objPlayer.sprite_index = sprPAttackPan
                or objPlayer.sprite_index = sprPAttackPot
                or objPlayer.sprite_index = sprPAttackSledgeHammer
                or objPlayer.sprite_index = sprPigButcherAttack
                or objPlayer.sprite_index = sprPAttackPipe
                or objPlayer.sprite_index = sprPAttackPool
                or objPlayer.sprite_index = sprPAttackChain
                or objPlayer.sprite_index = sprPAttackSkateboard
                or objPlayer.sprite_index = sprPAttackBust
                or objPlayer.sprite_index = sprPAttackArm
                or objPlayer.sprite_index = sprPAttackGuitar
                or (global.maskindex = 2 and (objPlayer.sprite_index = sprPAttackPunch or objPlayer.sprite_index = sprPAttackUnarmed1)) {
                    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
                    sound_ps(sndPunch)
                    scrMeleeBlood(x, y)
                        //scrGoreCut(x, y, edir - 180, 0)
                    my_id = instance_create(x, y, objDeadBody)
                    my_id.sprite_index = sprDogDeadBlunt
                        //my_id.image_index = 3 + floor(random(3))
                    my_id.image_angle = edir - 10 + random(20)
                    my_id.direction = my_id.image_angle
                    my_id.speed = 1.5 + random(1)
                } else {
                    //DOG SLASH KILL
                    sound_ps(choose(sndCut1, sndCut2));
                    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
                    my_id = instance_create(x, y, objDeadBody)
                    my_id.sprite_index = sprDogDeadPieces
                    my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                    my_id.speed = 3 + random(1)
                    my_id.friction = 0.15
                    death = choose(0, 2)
                    my_id.image_index = 0 + death
                    my_id.image_angle = my_id.direction
                    scrMeleeBlood(x, y)
                        //scrGoreCut(x, y, edir - 180, 1)
                        //1 lower
                    partdog = instance_create(x, y, objDogPart)
                    partdog.sprite_index = sprDogDeadPieces
                    partdog.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                    partdog.speed = 1 + random(1)
                    partdog.friction = 0.15
                    partdog.image_index = 1 + death
                    partdog.image_angle = my_id.direction
                    scrMeleeBlood(x, y)
                        //scrGoreCut(x, y, edir - 180, 1)
                }
                instance_destroy()
            }
            //END DOGS
    }
    //ATTACK ENEMIES GENERAL
    with objEnemy {
        if place_meeting(x, y, objPlayer) or place_meeting(x + global.spacex, y + global.spacey, objPlayer) {
            mask_index = sprWeaponMask

            //Kill Commandos.
            if object_index = objCommando {
                mask_index = sprMask
                global.myscore += (500) + 400 * global.factor
                global.killscore += 800
                global.boldscore += 400 * global.factor
                global.combo += 1
                global.combotime = 240
                global.killx[global.kills] = x
                global.killy[global.kills] = y
                global.kills += 1
                if global.bonustime < 12 + global.factor * 4 global.bonustime = 12 + global.factor * 4
                if global.factor = 2 ds_list_add(global.bonuslist, "Exposure")
                if global.factor = 3 ds_list_add(global.bonuslist, "Double Exposure")
                if global.factor = 4 ds_list_add(global.bonuslist, "Triple Exposure")
                if global.factor > 4 ds_list_add(global.bonuslist, "Severe Exposure")
                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                scrMeleeBlood(x, y)

                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                my_id = instance_create(x, y, objDeadBody)
                my_id.sprite_index = sprCommandoDead
                my_id.image_angle = edir - 10 + random(20)
                my_id.direction = my_id.image_angle
                my_id.speed = 1.5 + random(1)
                my_id1 = instance_create(x, y, objPoliceHat)
                my_id1.sprite_index = sprCommandoHat
                my_id1.direction = edir - 10 + random(20)
                my_id1.speed = 1 + random(2)
                if instance_exists(objLSD) sound_ps(sndLSDSplat)
                else sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
                sound_ps(sndPunch)
                instance_destroy()
            }

            //Kill radio enemies.
            else if object_index = objEnemyRadio {
                mask_index = sprMask
                global.myscore += (500) + 400 * global.factor
                global.killscore += 800
                global.boldscore += 400 * global.factor
                global.combo += 1
                global.combotime = 240
                global.killx[global.kills] = x
                global.killy[global.kills] = y
                global.kills += 1
                if global.bonustime < 12 + global.factor * 4 global.bonustime = 12 + global.factor * 4
                if global.factor = 2 ds_list_add(global.bonuslist, "Exposure")
                if global.factor = 3 ds_list_add(global.bonuslist, "Double Exposure")
                if global.factor = 4 ds_list_add(global.bonuslist, "Triple Exposure")
                if global.factor > 4 ds_list_add(global.bonuslist, "Severe Exposure")
                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                scrMeleeBlood(x, y)

                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                my_id = instance_create(x, y, objDeadBody)
                my_id.sprite_index = sprERadioDead
                my_id.image_index = choose(0, 1)
                my_id.image_angle = edir - 10 + random(20)
                my_id.direction = my_id.image_angle
                my_id.speed = 1.5 + random(1)
                my_id1 = instance_create(x, y, objPoliceHat)
                my_id1.sprite_index = sprCommandoHat
                my_id1.direction = edir - 10 + random(20)
                my_id1.speed = 1 + random(2)
                if instance_exists(objLSD) sound_ps(sndLSDSplat)
                else sound_ps(choose(sndHit, sndHit2, sndHit3, sndHit1))
                sound_ps(sndPunch)
                instance_destroy()
            }

            //CHAINSAW EXECUTE FAT ENEMIES
            else if (object_index = objEnemyFat or object_index = objEnemyFatStatic) and global.maskindex = 22 {
                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                my_id = instance_create(x, y, objPChainsawKillFat)
                my_id.direction = edir - 10 + random(20)
                my_id.image_angle = my_id.direction
                global.executionx = x
                global.executiony = y
                    //with my_id move_outside_solid(my_id.image_angle-180,16)
                instance_destroy()
                with objPlayerMouse {
                    instance_destroy()
                }
            }

            //PUNCH OUT FAT ENEMIES
            else if (object_index = objEnemyFat or object_index = objEnemyFatStatic) and global.maskindex = 2 {
                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                sound_ps(sndDoorHit)
                global.shake = 3
                my_id = instance_create(x, y, objFatKnockedOut)
                my_id.direction = edir - 10 + random(20)
                my_id.angle = my_id.direction
                with my_id move_outside_solid(angle - 180, 16)
                my_id.speed = 2
                instance_destroy()
            }

            //PUNCH OUT INSPECTORS
            else if object_index = objInspector and global.maskindex = 2 {
                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
                sound_ps(sndDoorHit)
                global.shake = 3
                my_id = instance_create(x, y, objInspectorKnockedOut)
                my_id.direction = edir - 10 + random(20)
                my_id.angle = my_id.direction
                with my_id move_outside_solid(angle - 180, 16)
                my_id.speed = 2
                instance_destroy()
            } else if scrCollisionLineExt(x, y, objPlayer.lastx, objPlayer.lasty, 4, objSolid, objWall, objSolidCaster, objDoorV, objWallSoftH) or object_index = objEnemyFat or object_index = objEnemyFatLSD or object_index = objEnemyFatStatic or object_index = objInspector or object_index = objWaiter {
                nothing = 1
            } else { //{mask_index=sprMask objPlayer.x=objPlayer.lastx objPlayer.y=objPlayer.lasty exit}
                mask_index = sprMask
                global.shake = 7
                    //my_id = instance_create(x, y - 12, objScore)

                //KILL UNARMED
                if sprite_index = sprEWalkUnarmed or sprite_index = sprPoliceWalkUnarmed or sprite_index = sprEGangWalkUnarmed {
                    //my_id.text = "+" + string((100) + 100 * global.factor) + "pts"
                    global.myscore += (100) + 100 * global.factor
                    global.boldscore = 100 * global.factor
                    global.killscore += 100
                    global.combo += 1
                    global.combotime = 240
                    global.killx[global.kills] = x
                    global.killy[global.kills] = y
                    global.kills += 1
                } else {
                    //my_id.text = "+" + string((200) + 200 * global.factor) + "pts"
                    global.myscore += (200) + 200 * global.factor
                    global.killscore += 200
                    global.boldscore += 200 * global.factor
                    global.combo += 1
                    global.combotime = 240
                    global.killx[global.kills] = x
                    global.killy[global.kills] = y
                    global.kills += 1
                    if global.bonustime < 12 + global.factor * 4 global.bonustime = 12 + global.factor * 4
                    if global.factor = 2 ds_list_add(global.bonuslist, "Exposure")
                    if global.factor = 3 ds_list_add(global.bonuslist, "Double Exposure")
                    if global.factor = 4 ds_list_add(global.bonuslist, "Triple Exposure")
                    if global.factor > 4 ds_list_add(global.bonuslist, "Severe Exposure")
                }

                //BEGIN BLOOD/GORE
                edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)

                //BEGIN DEAD BODIES
                my_id = instance_create(x, y, objDeadBody)

                //GANG HEAVY SLASHES
                if (objPlayer.sprite_index = sprPAttackChainsaw 
                or objPlayer.sprite_index = sprPAttackSword 
                or objPlayer.sprite_index = sprPAttackAxe 
                or objPlayer.sprite_index = sprPAttackMachete 
                or objPlayer.sprite_index = sprPAttackCleaver
                or objPlayer.sprite_index = sprPAttackKnifeFlamethrower 
                or objPlayer.sprite_index = sprPAttackKatanaSpecial) {

                    sound_ps(choose(sndCut1, sndCut2))
                    sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
                    if scrIsGang(object_index) my_id.sprite_index = sprEGangBackSlashed
                    else my_id.sprite_index = sprEBackSlashed
                    my_id.image_index = floor(random(6))
                    my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                    my_id.image_angle = my_id.direction

                    //DECAPITATION 0 
                    if my_id.image_index = 0 {
                        global.shake = 12
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 0)
                            //HEAD
                        part = instance_create(x, y, objSeveredHead)
                        part.direction = random(360)
                        part.speed = 1 + random(2)

                    }

                    //CUT IN HALF CLEAN 1 
                    if my_id.image_index = 1 {
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 1)
                        part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart)
                        if scrIsGang(object_index) part.sprite_index = sprEGangDeadPieces
                        else part.sprite_index = sprEBackSlashedPiece
                        part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                        part.speed = 1 + random(1)
                        part.friction = 0.15
                        part.image_index = 1
                        part.alarm[0] = 6
                        part.image_angle = part.direction
                    }

                    //UPPER HALF CUT 2 
                    if my_id.image_index = 2 {
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 0)
                        part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart)
                        if scrIsGang(object_index) part.sprite_index = sprEGangDeadPieces
                        else part.sprite_index = sprEBackSlashedPiece
                        part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                        part.speed = 1 + random(1)
                        part.friction = 0.15
                        part.image_index = 2
                        part.alarm[0] = 6
                        part.image_angle = part.direction
                    }

                    //CUT IN HALF w. EVISCERATION 3 
                    if my_id.image_index = 3 {
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 1)
                        if scrIsGang(object_index) {            
                            part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objGangHalvedCrawl)
                            part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                            part.speed = 1 + random(1)
                            part.friction = 0.15
                            part.image_index = 3
                            part.image_angle = part.direction
                        }               
                        else {
                            part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart)
                            part.sprite_index = sprEBackSlashedPiece
                            part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                            part.speed = 1 + random(1)
                            part.friction = 0.15
                            part.image_index = 3
                            part.alarm[0] = 6
                            part.image_angle = part.direction
                        }
                        
                        if instance_exists(part) {
                            if part.sprite_index = sprEGangDeadPieces and part.image_index = 3 and round(random(2)) = 3 {
                                part.sprite_index = sprEGangHalvedWakeUp
                                part.image_index = 0.15
                            }
                        }
                    }

                    //CUT IN HALF w. SPINE 4
                    if my_id.image_index = 4 {
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 1)
                        part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart)
                        if scrIsGang(object_index) part.sprite_index = sprEGangDeadPieces
                        else part.sprite_index = sprEBackSlashedPiece
                        part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 5 + random(10)
                        part.speed = 1 + random(1)
                        part.friction = 0.15
                        part.image_index = 4
                        part.alarm[0] = 6
                        part.image_angle = part.direction
                    }

                    //R. ARM CUT 5 

                    if my_id.image_index = 5 {
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 0)
                            //4 body

                        //6 right arm
                        part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart)
                        if scrIsGang(object_index) part.sprite_index = sprEGangDeadPieces
                        else part.sprite_index = sprEBackSlashedPiece
                        part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) - 45
                        part.speed = 3 + random(1)
                        part.friction = 0.15
                        part.image_index = 5
                        part.alarm[0]=6
                        part.image_angle = part.direction
                        part.image_yscale = 1
                    }

                    //L. ARM CUT
                    if my_id.image_index = 6 {
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 0)
                            //5 left arm
                        part = instance_create(my_id.x + lengthdir_x(22, edir), my_id.y + lengthdir_y(18, edir), objBodyPart)
                        if scrIsGang(object_index) part.sprite_index = sprEGangDeadPieces
                        else part.sprite_index = sprEBackSlashedPiece
                        part.direction = point_direction(objPlayer.x, objPlayer.y, x, y) + 45
                        part.speed = 3 + random(1)
                        part.friction = 0.15
                        part.image_index = 6
                        part.alarm[0]=6
                        part.image_angle = part.direction
                        part.image_yscale = 1

                    }

                }
                //END GORE FOR GANG HEAVY SLASHES


                {

                    //ATTACK WITH BLUNT
                    if objPlayer.sprite_index = sprPAttackClub
                    or objPlayer.sprite_index = sprPAttackBat
                    or objPlayer.sprite_index = sprPAttackCrowbar
                    or objPlayer.sprite_index = sprPigButcherAttack
                    or objPlayer.sprite_index = sprPAttackPan
                    or objPlayer.sprite_index = sprPAttackPot
                    or objPlayer.sprite_index = sprPAttackSledgeHammer
                    or objPlayer.sprite_index = sprPAttackPipe
                    or objPlayer.sprite_index = sprPAttackPool
                    or objPlayer.sprite_index = sprPAttackChain
                    or objPlayer.sprite_index = sprPAttackBag
                    or objPlayer.sprite_index = sprPAttackSkateboard
                    or objPlayer.sprite_index = sprPAttackBust
                    or objPlayer.sprite_index = sprPAttackArm
                    or objPlayer.sprite_index = sprPAttackGuitar
                    or(global.maskindex = 2 and (objPlayer.sprite_index = sprPAttackPunch or objPlayer.sprite_index = sprPAttackUnarmed1))

                    {
                        sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))
                        sound_ps(sndPunch)
                        if scrIsGang(object_index) my_id.sprite_index = sprEGangDeadBlunt
                        else my_id.sprite_index = choose(sprEBackBlunt, sprEFrontBlunt)
                        my_id.direction = edir - 10 + random(20)
                        my_id.image_angle = my_id.direction
                        my_id.speed = 1 + random(2)
                        my_id.image_index = 4 + floor(random(11))
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 0)

                    }

                    if objPlayer.sprite_index = sprPAttackPool objPlayer.sprite_index = sprPWalkPoolBroke
                }

                //END BLUNT


                //ATTACK POLICE
                if scrIsPolice(object_index) and (objPlayer.sprite_index = sprPAttackNightStick) //or (objPlayer.sprite_index=sprPAttackPunch) 
                    {
                        sound_ps(choose(sndHit, sndHit1, sndHit2, sndHit3))

                        //CREATE POLICE HAT
                        my_id1 = instance_create(x, y, objPoliceHat)
                        my_id1.direction = edir - 10 + random(20)
                        my_id1.speed = 1 + random(2)

                        //CHOOSE POLICE BODY
                        my_id.sprite_index = choose(sprPoliceBackBlunt, sprPoliceFrontBlunt)
                        my_id.direction = edir - 10 + random(20)
                        my_id.image_angle = my_id.direction
                        my_id.speed = 1 + random(2)
                        my_id.image_index = floor(random(13))
                        scrMeleeBlood(x, y)
                        scrGoreCut(x, y, edir - 180, 0)

                        if my_id.sprite_index = sprPoliceBackBlunt {
                            if my_id.image_index = 0 or my_id.image_index = 1 or my_id.image_index = 2 or my_id.image_index = 4
                            or my_id.image_index = 11
                            scrMeleeBlood(x, y)

                            scrGoreCut(x, y, edir - 180, 0)
                        }
                        if my_id.sprite_index = sprPoliceFrontBlunt {
                            if my_id.image_index = 1 or my_id.image_index = 6 or my_id.image_index = 9
                            scrGoreBash(x, y, edir - 180, 1, 1)
                            else scrGoreBash(x, y, edir - 180, 0, 0)
                        }

                        //END POLICE KILLS
                    }

                //ATTACK WITH KNIFE
                if objPlayer.sprite_index = sprPAttackKnife
                or objPlayer.sprite_index = sprPAttackKnifeSniper {
                    if scrIsGang(object_index) my_id.sprite_index = choose(sprEGangDeadCut, sprEGangDeadChainsaw)
                    else my_id.sprite_index = sprEBackCut
                    sound_ps(choose(sndCut1, sndCut2))
                    my_id.image_index = 5 + floor(random(12))
                    my_id.direction = edir - 10 + random(20)
                    my_id.image_angle = my_id.direction
                    my_id.speed = 1 + random(2)
                    scrMeleeBlood(x, y)
                    scrGoreCut(x, y, edir - 180, 0)

                    if my_id.image_index = 6 or my_id.image_index = 7 or my_id.image_index = 8 or my_id.image_index = 9
                    or my_id.image_index = 13 or my_id.image_index = 16
                    scrMeleeBlood(x, y)
                    scrGoreCut(x, y, edir - 180, 0)
                }



                //ATTACK WITH BROKEN POOL CUE
                if objPlayer.sprite_index = sprPAttackPoolBroke {
                    my_id.sprite_index = choose(sprEDeadBackPool, sprEDeadBackPool, sprEDeadFrontPool)
                    sound_ps(choose(sndCut1, sndCut2))
                    my_id.image_index = random(2)
                    my_id.direction = edir - 10 + random(20)
                    my_id.image_angle = my_id.direction
                    scrMeleeBlood(x, y)
                    scrGoreCut(x, y, edir - 180, 0)
                    if instance_exists(objLSD) objPlayer.sprite_index = sprPWalkUnarmedLSD
                    else objPlayer.sprite_index = sprPWalkUnarmed
                    objPlayer.image_speed = 0
                }

                //End attacks.

                my_id.direction = edir
                my_id.speed = 1.5 + random(1)
                my_id.image_angle = my_id.direction
                if global.pigkill = 1 my_id.sprite_index = sprOscarDead
                global.pigkill = 0

                if my_id.sprite_index = sprEBackBlunt and round(random(5)) = 2 {
                    with objDeadBody {
                        my_id = instance_create(x, y, objECrawl)
                        my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y)
                        my_id.speed = 1 + random(2)
                        my_id.friction = 0.15
                        my_id.alarm[0] = 6
                        my_id.image_angle = my_id.direction
                        global.shake = 8
                        scrMeleeBlood(x, y)
                        sound_ps(sndHit)
                        sound_ps(sndPunch)
                        instance_destroy()
                        global.test = 0
                        with my_id {
                            if !place_free(x, y) {
                                global.test = 1 instance_destroy()
                            }
                        }
                        if global.test = 0 instance_destroy()
                    }
                }

                if instance_exists(my_id) {
                    if my_id.sprite_index = sprEBackBlunt and round(random(10)) = 2 {
                        my_id.sprite_index = sprEBackCracked
                        my_id.image_index = 0
                    }
                }

                //HANDLE UNARMED ENEMIES
                if sprite_index = sprEWalkUnarmed
                or sprite_index = sprPoliceWalkUnarmed
                or sprite_index = sprEGangWalkUnarmed
                or sprite_index = sprEGiveUp
                or object_index = objDogPatrol
                or object_index = objEnemyFat
                or object_index = objEnemyFatStatic
                or object_index = objEnemyFatLSD
                or object_index = objCommando
                or object_index = objEnemyRadio
                noweapon = 1
                else noweapon = 0
                scrIdleGetEnemy()

                if noweapon = 0 {
                    my_id = instance_create(x, y, objWeaponThrow)
                    my_id.direction = other.direction - 70 + random(40)
                    my_id.speed = 2 + random(2)
                    my_id.image_index = scrCurrentWeaponExt(sprite_index)
                    my_id.ammo = ammo
                }
                instance_destroy()
            }
        }
    }
    x = lastx
    y = lasty
}

if sprite_index = sprPAttackPunch or sprite_index = sprPAttackBag or sprite_index = sprPAttackDrill or sprite_index = sprPAttackUnarmed1 {
    lastx = x
    lasty = y
    global.spacex = lengthdir_x(12, dir)
    global.spacey = lengthdir_y(12, dir)
    x += global.spacex
    y += global.spacey


    global.my_id = id
    with objGlassPanelH {
        if place_meeting(x, y, global.my_id) {
            SteamIncStat("Windows", 1)
            if global.my_id.lasty < y + 2 {
                add = -1
            } else {
                add = 1
            }
            i = 0
            repeat(40) {
                my_id = instance_create(x + i * 1.5, y, objShard)
                my_id.speed = random(5)
                my_id.direction = add * 90 - 8 + random(16)
                i += 1
            }
            instance_create(x, y, objGlassPanelHBroken)
            global.shake = 4
            instance_destroy()
            if instance_exists(objLSD) sound_ps(choose(sndGlassBreakLSD, sndGlassReverse))
            else sound_ps(choose(sndGlass1, sndGlass2))
        }
    }

    with objGlassPanelV {
        if place_meeting(x, y, global.my_id) {
            SteamIncStat("Windows", 1)
            if global.my_id.lastx < x + 2 {
                add = -1
            } else {
                add = 1
            }
            i = 0
            repeat(40) {
                my_id = instance_create(x, y + i * 1.5, objShard)
                my_id.speed = random(5)
                my_id.direction = 90 + add * 90 - 8 + random(16)
                i += 1
            }
            instance_create(x, y, objGlassPanelVBroken)
            global.shake = 4
            instance_destroy()
            if instance_exists(objLSD) sound_ps(choose(sndGlassBreakLSD, sndGlassReverse))
            else sound_ps(choose(sndGlass1, sndGlass2))
        }
    }

    x += lengthdir_x(12, dir)
    y += lengthdir_y(12, dir)

    with objEnemy {
        if scrCantGetHit(object_index) valid = 0
        else valid = 1
        if (place_meeting(x, y, objPlayer) or place_meeting(x + global.spacex, y + global.spacey, objPlayer)) and valid = 1 {
            mask_index = sprWeaponMask
            if scrCollisionLineExt(x, y, objPlayer.lastx, objPlayer.lasty, 4, objWall, objSolid, objSolidCaster, objDoorV, objWallSoftH) {
                scrMoveSolidOff() mask_index = sprMask objPlayer.x = objPlayer.lastx objPlayer.y = objPlayer.lasty exit
            }
            mask_index = sprMask
            edir = point_direction(objPlayer.lastx, objPlayer.lasty, x, y)
            sound_ps(sndDoorHit)
            global.shake = 8
            my_id = instance_create(x, y, objKnockedOut)
            my_id.type = object_index
            if scrIsGang(object_index) my_id.sprite_index = sprEGangGetUp
            if scrIsPolice(object_index) my_id.sprite_index = sprPoliceGetUp
            my_id.direction = edir - 10 + random(20)
            my_id.angle = my_id.direction
            with my_id move_outside_solid(angle - 180, 16)
            my_id.speed = 3
            scrIdleGetEnemy()
            if sprite_index = sprEWalkUnarmed or sprite_index = sprEGangWalkUnarmed or sprite_index = sprPoliceWalkUnarmed noweapon = 1
            else noweapon = 0
            if noweapon = 0 {
                global.test = 0
                with objEnemy
                if alert = 1 global.test += 1
                global.myscore += 200 + 400 * global.factor
                global.boldscore += 200 + 400 * global.factor
                global.combotime += 100
                global.killx[global.kills] = x
                global.killy[global.kills] = y
                global.kills += 1
                my_id = instance_create(x, y, objWeaponThrow)
                my_id.direction = direction - 70 + random(40)
                my_id.image_index = scrCurrentWeaponExt(sprite_index)
                my_id.speed = 2 + random(2)
                my_id.ammo = ammo
            }
            instance_destroy()
        }
    }
    x = lastx
    y = lasty
}

