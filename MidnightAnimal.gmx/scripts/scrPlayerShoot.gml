        //Begin guns.
        if ammo > 0 {

            mask_index = sprBullet
            image_angle = dir

            //Battle rifle.
            if sprite_index = sprPWalkM16 {
                sound_ps(sndM16)
                scrHearPlayer()
                ammo -= 1
                reload = 5 / global.timeMultiplier * global.timeMultiplier
                global.shake = 8
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 4 + random(8)
                        my_id.speed = 14 * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndM161,sndM162,sndM163))
                sprite_index = sprPAttackM16
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
                global.usedgun[0] = 1
            }

            //P90.
            if sprite_index = sprPWalkP90 {
                sound_ps(sndP90)
                scrHearPlayer()
                ammo -= 1
                reload = 2 / global.timeMultiplier * global.timeMultiplier
                global.shake = 5
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(24, dir - 2), y + lengthdir_y(24, dir - 2), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(24, dir - 2), y + lengthdir_y(24, dir - 2), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 4 + random(8)
                        my_id.speed = (12 + random(4)) * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndM161,sndM162,sndM163))
                sprite_index = sprPAttackP90
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
                global.usedgun[0] = 1
            }
            
            //SUPPRESSED SCAR-H
            if sprite_index = sprPWalkSuppressedMG {
                sound_ps(sndSuppressedMG)
                ammo -= 1
                reload = 3 / global.timeMultiplier * global.timeMultiplier
                global.shake = 8
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 3 + random(2)
                        my_id.speed = 28 * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir - 2 + random(4)
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndM161,sndM162,sndM163))
                sprite_index = sprPAttackSuppressedMG
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
                global.usedgun[0] = 1
            }


            //AK-47
            if sprite_index = sprPWalkAK {
                sound_ps(sndAK)
                scrHearPlayer()
                ammo -= 1
                reload = 3 / global.timeMultiplier * global.timeMultiplier
                global.shake = 11
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(16, dir - 7), y + lengthdir_y(16, dir - 7), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(16, dir - 7), y + lengthdir_y(16, dir - 7), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 6 + random(12)
                        my_id.speed = 14 * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndAKShell1,sndAKShell2,sndAKShell3))
                sprite_index = sprPAttackAK
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
                global.usedgun[0] = 1
            }

            //Heavy machine gun.
            if sprite_index = sprPWalkHeavy {
                sound_ps(sndHeavy)
                scrHearPlayer()
                ammo -= 1
                reload = 4 + round(random(2))
                global.shake = 11
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 26)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 2 + random(3)
                        my_id.speed = 20 + random(4)
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = 1 + random(3)
                    sound_ps(choose(sndAKShell1,sndAKShell2,sndAKShell3))
                sprite_index = sprPAttackHeavy
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 45
            }

            //Thompson submachine gun.
            if sprite_index = sprPWalkThompson {
                sound_ps(sndThompson)
                scrHearPlayer()
                ammo -= 1
                reload = 1 + round(random(2))
                global.shake = 7
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 26)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 7 + random(14)
                        my_id.speed = 13 + random(5)
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = 1 + random(3)
                    sound_ps(choose(sndAKShell1,sndAKShell2,sndAKShell3))
                sprite_index = sprPAttackThompson
                image_speed = 1
                image_index = 0
                objEffector.amp = 45
            }

            //Crossbow.
            if sprite_index = sprPWalkCrossbow {
                sound_ps(sndCrossbow)
                ammo -= 1
                reload = 15
                global.shake = 3
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                        my_id = instance_create(x, y, objSmokeHit)
                        my_id.image_angle = image_angle
                        global.dir = dir
                        with my_id {
                            move_contact_solid(global.dir, 26)
                        }

                    } else {
                        my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objNail)
                        if instance_exists(my_id) {
                            my_id.direction = dir
                            my_id.speed = 32
                            my_id.image_angle = my_id.direction
                        }
                    }
                    sound_ps(choose(sndAKShell1,sndAKShell2,sndAKShell3))
                sprite_index = sprPAttackCrossbow
                image_speed = 0.25
                image_index = 0
                objEffector.amp = 20
            }

            //SPAS-12 (semi shotgun).
            if sprite_index = sprPWalkShotgun or sprite_index = sprPTurnShotgun {

                sound_ps(sndShotgun)

                scrHearPlayer()
                ammo -= 1
                reload = 1 / global.timeMultiplier * global.timeMultiplier
                global.shake = 15
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                    with objDoorV {
                        if place_meeting(x + lengthdir_x(12, global.dir - 180), y + lengthdir_y(12, global.dir - 180), objPlayer) {

                            if object_index = objDoorV {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed += lengthdir_x(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorH {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed += lengthdir_y(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorV2 {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed -= lengthdir_x(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorH2 {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed -= lengthdir_y(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }


                        }
                    }


                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    repeat(10) {
                        my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                        if instance_exists(my_id) {
                            my_id.direction = dir - 6 + random(12)
                            my_id.speed = (16 - random(4)) * global.timeMultiplier * global.timeMultiplier
                            my_id.image_angle = my_id.direction
                        }
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprShotgunShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndShotgun1,sndShotgun2,sndShotgun3))
                sprite_index = sprPAttackShotgun
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 45
                global.usedgun[1] = 1
            }

            //DOUBLE BARREL SHOTGUN
            if sprite_index = sprPWalkDoubleBarrel {
                sound_ps(sndDoubleBarrel)
                scrHearPlayer()
                ammo -= 1
                reload = 6 / global.timeMultiplier * global.timeMultiplier
                global.shake = 17
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }



                    with objDoorV {
                        if place_meeting(x + lengthdir_x(12, global.dir - 180), y + lengthdir_y(12, global.dir - 180), objPlayer) {

                            if object_index = objDoorV {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed += lengthdir_x(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorH {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed += lengthdir_y(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorV2 {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed -= lengthdir_x(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorH2 {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed -= lengthdir_y(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }


                        }
                    }

                } else {
                flash = instance_create(x + lengthdir_x(16, dir - 7 - 3), y + lengthdir_y(16, dir - 7 - 3), objMuzzleFlash)
                if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    repeat(20) {
                        my_id = instance_create(x + lengthdir_x(16, dir - 7 - 3), y + lengthdir_y(16, dir - 7 - 3), objBullet)
                        if instance_exists(my_id) {
                            my_id.direction = dir - 10 + random(20)
                            my_id.speed = (14 - random(6)) * global.timeMultiplier * global.timeMultiplier
                            my_id.image_angle = my_id.direction
                        }
                    }
                }
                sound_ps(choose(sndShotgun1, sndShotgun2, sndShotgun3))
                if ammo = 1 sprite_index = sprPAttackDoubleBarrel1
                else sprite_index = sprPAttackDoubleBarrel2
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 45
                global.usedgun[2] = 1
            }

            //AA-12 (automatic shotgun).
              if sprite_index = sprPWalkAutoShotgun {
                  sound_ps(sndAA12)
                  scrHearPlayer()
                  ammo -= 1
                  reload = 4 / global.timeMultiplier * global.timeMultiplier
                  global.shake = 9
                  if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                      my_id = instance_create(x, y, objSmokeHit)
                      my_id.image_angle = image_angle
                      global.dir = dir
                      with my_id {
                          move_contact_solid(global.dir, 16)
                      }
                      with objDoorV {
                          if place_meeting(x + lengthdir_x(12, global.dir - 180), y + lengthdir_y(12, global.dir - 180), objPlayer) {

                              if object_index = objDoorV {
                                  if solid = 0 {
                                      if abs(swingspeed) < 8 {
                                          swingspeed += lengthdir_x(16, global.dir)
                                          if abs(swingspeed) > 3.5 swinger = 1
                                      }
                                      if abs(swingspeed) > 8 {
                                          swingspeed = sign(swingspeed) * 8
                                      }
                                  }
                              }

                              if object_index = objDoorH {
                                  if solid = 0 {
                                      if abs(swingspeed) < 8 {
                                          swingspeed += lengthdir_y(16, global.dir)
                                          if abs(swingspeed) > 3.5 swinger = 1
                                      }
                                      if abs(swingspeed) > 8 {
                                          swingspeed = sign(swingspeed) * 8
                                      }
                                  }
                              }

                              if object_index = objDoorV2 {
                                  if solid = 0 {
                                      if abs(swingspeed) < 8 {
                                          swingspeed -= lengthdir_x(16, global.dir)
                                          if abs(swingspeed) > 3.5 swinger = 1
                                      }
                                      if abs(swingspeed) > 8 {
                                          swingspeed = sign(swingspeed) * 8
                                      }
                                  }
                              }

                              if object_index = objDoorH2 {
                                  if solid = 0 {
                                      if abs(swingspeed) < 8 {
                                          swingspeed -= lengthdir_y(16, global.dir)
                                          if abs(swingspeed) > 3.5 swinger = 1
                                      }
                                      if abs(swingspeed) > 8 {
                                          swingspeed = sign(swingspeed) * 8
                                      }
                                  }
                              }


                          }
                      }

                  } else {
                      flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                      if instance_exists(flash) {
                          flash.direction = dir
                          flash.image_angle = flash.direction
                      }
                      repeat(10) {
                          my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                          if instance_exists(my_id) {
                              my_id.direction = dir - 7 + random(14)
                              my_id.speed = (18 + random(3)) * global.timeMultiplier * global.timeMultiplier
                              my_id.image_angle = my_id.direction
                          }
                      }
                  }
                  my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                  my_id.sprite_index = sprShotgunShell
                  my_id.image_angle = dir
                  my_id.direction = dir - 90 * left - 20 + random(30)
                  my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                  sound_ps(choose(sndShotgun1, sndShotgun2, sndShotgun3))
                  sprite_index = sprPAttackAutoShotgun
                  image_speed = 0.5
                  image_index = 0
                  objEffector.amp = 50

              }
            //SUPPRESSED PISTOL
            if sprite_index = sprPWalkSilencer {
                sound_ps(sndSilencedPistol)
                ammo -= 1
                reload = 11
                global.shake = 7
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                    
                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 3 + random(6)
                        my_id.speed = 21 * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(16, dir - 7 - 4 * left), y + lengthdir_y(16, dir - 7 - 4 * left), objShell)
                my_id.sprite_index = sprUziShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndPistol1,sndPistol2,sndPistol3))
                sprite_index = sprPAttackSilencer
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
                global.usedgun[3] = 1
            }

            //UZI
            if sprite_index = sprPWalkUzi {
                if sound_isplaying(sndUzi) {
                    sound_stop(sndUzi)
                    sound_ps(sndUzi)
                }
                sound_ps(sndUzi)
                scrHearPlayer()
                ammo -= 1
                reload = 2 / global.timeMultiplier * global.timeMultiplier
                global.shake = 8
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)

                    }
                    
                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 5 + random(10)
                        my_id.speed = 16 * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(16, dir - 7 - 4 * left), y + lengthdir_y(16, dir - 7 - 4 * left), objShell)
                my_id.sprite_index = sprUziShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndPistol1,sndPistol2,sndPistol3))
                sprite_index = sprPAttackUzi
                image_speed = 1
                image_index = 0
                objEffector.amp = 40
                global.usedgun[4] = 1
            }

            //SILENCED UZI
            if sprite_index = sprPWalkSilencedUzi {
                if sound_isplaying(sndSilencedSMG) {
                    sound_stop(sndSilencedSMG)
                    sound_ps(sndSilencedSMG)
                }
                sound_ps(sndSilencedSMG)
                ammo -= 1
                reload = 2
                global.shake = 7
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(26, dir - 7), y + lengthdir_y(26, dir - 7), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(26, dir - 7), y + lengthdir_y(26, dir - 7), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 5 + random(10)
                        my_id.speed = 16
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(16, dir - 7 - 4 * left), y + lengthdir_y(16, dir - 7 - 4 * left), objShell)
                my_id.sprite_index = sprUziShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = 1 + random(3)
                    sound_ps(choose(sndPistol1,sndPistol2,sndPistol3))
                sprite_index = sprPAttackSilencedUzi
                image_speed = 1
                image_index = 0
                objEffector.amp = 40
                global.usedgun[8] = 1
            }

            //Nailgun
            if sprite_index = sprPWalkNailGun {
                sound_ps(sndNailGun)
                ammo -= 1
                reload = 12
                global.shake = 5
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    //my_id=instance_create(x,y,objSmokeHit)
                    //my_id.image_angle=image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)

                    }
                } else {
                    my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objNail)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 6 + random(12)
                        my_id.speed = 14 + random(7)
                        my_id.image_xscale = 2
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(16, dir - 7 - 4 * left), y + lengthdir_y(16, dir - 7 - 4 * left), objShell)
                my_id.sprite_index = sprNailCasing
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = 1 + random(3)
                sprite_index = sprPAttackNailgun
                image_speed = 1
                image_index = 0
                objEffector.amp = 40
                global.usedgun[8] = 1
            }

            //MP5
            if sprite_index = sprPWalkM16 {
                sound_ps(sndMP5)
                scrHearPlayer()
                ammo -= 1
                reload = 3 / global.timeMultiplier * global.timeMultiplier
                global.shake = 9
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    flash = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 4 + random(8)
                        my_id.speed = 22 * global.timeMultiplier * global.timeMultiplier
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndM161,sndM162,sndM163))
                sprite_index = sprPAttackMP5
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
                global.usedgun[7] = 1
            }
            
            //9mm
            if sprite_index = sprPWalkHandgun {
                sound_ps(sndHandgun)
                scrHearPlayer()
                ammo -= 1
                reload = 14 / global.timeMultiplier * global.timeMultiplier
                global.shake = 9
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)

                    }
                } else {
                    flash = instance_create(x + lengthdir_x(25, dir), y + lengthdir_y(24, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(25, dir), y + lengthdir_y(24, dir), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 6 + random(12)
                        my_id.speed = 12 + random(4)
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(16, dir - 7 - 4 * left), y + lengthdir_y(16, dir - 7 - 4 * left), objShell)
                my_id.sprite_index = sprUziShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndPistol1,sndPistol2,sndPistol3))
                sprite_index = sprPAttackHandgun
                image_speed = 1
                image_index = 0
                objEffector.amp = 40
                global.usedgun[4] = 1
            }



            //MAGNUM REVOLVER
            if sprite_index = sprPWalkMagnum {
                sound_ps(sndMagnum)
                scrHearPlayer()
                ammo -= 1
                reload = 16 / global.timeMultiplier * global.timeMultiplier
                global.shake = 15
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)

                    }
                } else {
                    flash = instance_create(x + lengthdir_x(20, dir - 7), y + lengthdir_y(20, dir - 7), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(20, dir - 7), y + lengthdir_y(20, dir - 7), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir
                        my_id.speed = 31
                        my_id.image_angle = my_id.direction
                        my_id.caliber = 1
                    }
                }
                sprite_index = sprPAttackMagnum
                image_speed = 0.5
                image_index = 0
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * image_yscale), y + lengthdir_y(5, dir - 5 * image_yscale), objShell)
                my_id.sprite_index = sprSniperShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * image_yscale - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndSniper1,sndSniper2,sndSniper3))
                objEffector.amp = 40
                global.usedgun[5] = 1
            }

            //SNIPER
            if sprite_index = sprPWalkSniper {
                sprite_index = sprPAttackSniper
                image_speed = 0.35
                sound_ps(sndSniper)
                scrHearPlayer()
                ammo -= 1
                reload = 18
                global.shake = 16
                mask_index = sprWeaponMask
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    global.dir = dir
                    with my_id move_contact_all(global.dir, 26)
                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir
                        my_id.speed = 32
                        my_id.image_xscale = 2
                        my_id.image_angle = my_id.direction
                        my_id.caliber = 1
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * image_yscale), y + lengthdir_y(5, dir - 5 * image_yscale), objShell)
                my_id.sprite_index = sprSniperShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * image_yscale - 20 + random(30)
                my_id.speed = 1 + random(3)
                    sound_ps(choose(sndSniper1,sndSniper2,sndSniper3))
                objEffector.amp = 50
                mask_index = sprMask

            }

            //SNIPER
            if sprite_index = sprPWalkHuntingRifle {
                sprite_index = sprPAttackHuntingRifle
                image_speed = 0.35
                sound_ps(sndHuntingRifle)
                scrHearPlayer()
                ammo -= 1
                reload = 18
                global.shake = 16
                mask_index = sprWeaponMask
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    global.dir = dir
                    with my_id move_contact_all(global.dir, 26)
                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir
                        my_id.speed = 28
                        my_id.image_xscale = 2
                        my_id.image_angle = my_id.direction
                        my_id.caliber = 1
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * image_yscale), y + lengthdir_y(5, dir - 5 * image_yscale), objShell)
                my_id.sprite_index = sprSniperShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * image_yscale - 20 + random(30)
                my_id.speed = 1 + random(3)
                    sound_ps(choose(sndSniper1,sndSniper2,sndSniper3))
                objEffector.amp = 50
                mask_index = sprMask

            }
            
            //SILENCED SHOTGUN
            if sprite_index = sprPWalkSilencedShotgun {
                sound_ps(sndSilencedShotgun)
                ammo -= 1
                reload = 23
                global.shake = 13
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                    with objDoorV {
                        if place_meeting(x + lengthdir_x(12, global.dir - 180), y + lengthdir_y(12, global.dir - 180), objPlayer) {

                            if object_index = objDoorV {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed += lengthdir_x(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorH {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed += lengthdir_y(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorV2 {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed -= lengthdir_x(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }

                            if object_index = objDoorH2 {
                                if solid = 0 {
                                    if abs(swingspeed) < 8 {
                                        swingspeed -= lengthdir_y(16, global.dir)
                                        if abs(swingspeed) > 3.5 swinger = 1
                                    }
                                    if abs(swingspeed) > 8 {
                                        swingspeed = sign(swingspeed) * 8
                                    }
                                }
                            }


                        }
                    }


                } else {
                    flash = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    repeat(8) {
                        my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                        if instance_exists(my_id) {
                            my_id.direction = dir - 6 + random(8)
                            my_id.speed = 22 - random(3)
                            my_id.image_angle = my_id.direction
                        }
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprShotgunShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = 1 + random(3)
                    sound_ps(choose(sndShotgun1,sndShotgun2,sndShotgun3))
                sprite_index = sprPAttackSilencedShotgun
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 35
                global.usedgun[1] = 1
            }

            //DUAL WIELD BERETTAS

            if sprite_index = sprPWalkDW or sprite_index = sprPTurnDW {
                if reload > 0 reload -= 1
                else {
                    sound_ps(sndHandgun)
                    scrHearPlayer()
                    ammo -= 1
                    reload = 2
                    global.shake = 10
                    mask_index = sprWeaponMask
                    if place_meeting(x + lengthdir_x(8, armangle1), y + lengthdir_y(8, armangle1), objSolid) or place_meeting(x + lengthdir_x(12, armangle1), y + lengthdir_y(12, armangle1), objDoorV) {
                        my_id = instance_create(x, y, objSmokeHit)
                        global.dir = armangle1
                        with my_id move_contact_all(global.dir, 26)
                    } else {
                        flash = instance_create(x + lengthdir_x(22, armangle1) + lengthdir_x(5, dir + 90), y + lengthdir_y(21, armangle1) + lengthdir_y(5, dir + 90), objMuzzleFlash)
                        if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = armangle1
                    }
                        my_id = instance_create(x + lengthdir_x(22, armangle1) + lengthdir_x(5, dir + 90), y + lengthdir_y(21, armangle1) + lengthdir_y(5, dir + 90), objBullet)
                        if instance_exists(my_id) {
                            my_id.direction = armangle1 - 4 + random(8)
                            my_id.speed = 20 + random(4)
                            my_id.image_angle = my_id.direction
                        }
                    }

                    my_id = instance_create(x + lengthdir_x(12, armangle1 - 5 * image_yscale) + lengthdir_x(7, dir + 90), y + lengthdir_y(12, armangle1 - 5 * image_yscale) + lengthdir_y(7, dir + 90), objShell)
                    my_id.sprite_index = sprUziShell
                    my_id.image_angle = dir
                    my_id.direction = armangle1 - 90 * image_yscale - 20 + random(30)
                    my_id.speed = 1 + random(3)
                        sound_ps(choose(sndPistol1,sndPistol2,sndPistol3))

                    if ammo > 1 {
                        ammo -= 1
                        if place_meeting(x + lengthdir_x(8, armangle2), y + lengthdir_y(8, armangle2), objSolid) or place_meeting(x + lengthdir_x(12, armangle2), y + lengthdir_y(12, armangle2), objDoorV) {
                            my_id = instance_create(x, y, objSmokeHit)
                            global.dir = armangle2
                            with my_id move_contact_all(global.dir, 26)
                        } else {
                            flash = instance_create(x + lengthdir_x(22, armangle2) + lengthdir_x(7, dir - 90), y + lengthdir_y(21, armangle2) + lengthdir_y(7, dir - 90), objMuzzleFlash)
                            if instance_exists(flash) {
                                flash.direction = dir
                                flash.image_angle = armangle2
                            }
                            my_id = instance_create(x + lengthdir_x(22, armangle2) + lengthdir_x(7, dir - 90), y + lengthdir_y(21, armangle2) + lengthdir_y(7, dir - 90), objBullet)
                            if instance_exists(my_id) {
                                my_id.direction = armangle2 - 4 + random(8)
                                my_id.speed = 20 + random(4)
                                my_id.image_angle = my_id.direction
                            }
                        }
                        my_id = instance_create(x + lengthdir_x(12, armangle2 + 5 * image_yscale) + lengthdir_x(5, dir - 90), y + lengthdir_y(12, armangle2 + 5 * image_yscale) + lengthdir_y(5, dir - 90), objShell)
                        my_id.sprite_index = sprUziShell
                        my_id.image_angle = dir
                        my_id.direction = armangle2 - 90 * image_yscale - 20 + random(30)
                        my_id.speed = 1 + random(3)
                            sound_ps(choose(sndPistol1,sndPistol2,sndPistol3))
                    }
                    objEffector.amp = 30
                    mask_index = sprMask
                }
            }

            //Flare gun.
            if sprite_index = sprPWalkFlareGun {
                sound_ps(sndFlareGunShoot)
                scrHearPlayer()
                ammo -= 1
                reload = 16 / global.timeMultiplier * global.timeMultiplier
                global.shake = 9

                my_id = instance_create(x + lengthdir_x(20, dir - 7), y + lengthdir_y(20, dir - 7), objFlare)
                if instance_exists(my_id) {
                    my_id.direction = dir - 5 + random(5)
                    my_id.speed = 7 * global.timeMultiplier * global.timeMultiplier
                    my_id.image_angle = my_id.direction
                }

                sprite_index = sprPAttackFlareGun
                image_speed = 1
                image_index = 0
                objEffector.amp = 30
            }

            //SKORPION
            if sprite_index = sprPWalkScorpion {
                sound_ps(sndScorpion)
                scrHearPlayer()
                ammo -= 1
                reload = 1
                global.shake = 6
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objSmokeHit)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)

                    }
                    
                } else {
                    flash = instance_create(x + lengthdir_x(20, dir - 7), y + lengthdir_y(20, dir - 7), objMuzzleFlash)
                    if instance_exists(flash) {
                        flash.direction = dir
                        flash.image_angle = flash.direction
                    }
                    my_id = instance_create(x + lengthdir_x(20, dir - 7), y + lengthdir_y(20, dir - 7), objBullet)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 3 + random(6)
                        my_id.speed = 20
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(16, dir - 7 - 4 * left), y + lengthdir_y(16, dir - 7 - 4 * left), objShell)
                my_id.sprite_index = sprUziShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = 1 + random(3)
                    sound_ps(choose(sndPistol1,sndPistol2,sndPistol3))
                sprite_index = sprPAttackScorpion
                image_speed = 1
                image_index = 0
                objEffector.amp = 40
                global.usedgun[6] = 1
            }

            //LSD AK
            if sprite_index = sprPWalkAKLSD {
                sound_ps(sndLSDAK)
                scrHearPlayer()
                ammo -= 1
                reload = 5 + random(4)
                global.shake = 8 + random(5)
                repeat(4) {
                    my_id = instance_create(x + lengthdir_x(16, image_angle), y + lengthdir_y(16, image_angle), objLSDFlame)
                    my_id.direction = image_angle - 20 + random(40)
                    my_id.speed = 1 + random(1)
                    my_id.image_angle = my_id.direction
                    my_id.amount = amount * 2
                    if my_id.amount > 1 my_id.amount = 1
                }
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objLSDFlame)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    repeat(2) {
                        my_id = instance_create(x + lengthdir_x(16, dir - 7), y + lengthdir_y(16, dir - 7), objBullet)
                        if instance_exists(my_id) {
                            my_id.sprite_index = sprBulletLSDMassive
                            my_id.direction = dir - 8 + random(16)
                            my_id.speed = 6 + random(14)
                            my_id.image_angle = my_id.direction
                        }
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                sprite_index = sprPAttackAKLSD
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
            }

            //LSD battle rifle.
            if sprite_index = sprPWalkM16LSD {
                sound_ps(sndLSDM16)
                scrHearPlayer()
                ammo -= 1
                reload = 5
                global.shake = 8 + random(2)
                repeat(4) {
                    my_id = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objLSDFlame)
                    my_id.direction = image_angle - 20 + random(40)
                    my_id.speed = 1 + random(1)
                    my_id.image_angle = my_id.direction
                    my_id.amount = amount * 2
                    if my_id.amount > 1 my_id.amount = 1
                }
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objLSDFlame)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                } else {
                    my_id = instance_create(x + lengthdir_x(4, dir - 2), y + lengthdir_y(4, dir - 2), objBullet)
                    my_id.sprite_index = sprBulletLSDMassive
                    if instance_exists(my_id) {
                        my_id.direction = dir - 7 + random(14)
                        my_id.speed = 13 + random(11)
                        my_id.image_angle = my_id.direction
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * left), y + lengthdir_y(5, dir - 5 * left), objShell)
                my_id.sprite_index = sprM16Shell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                    sound_ps(choose(sndM161,sndM162,sndM163))
                sprite_index = sprPAttackM16LSD
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 50
                global.usedgun[0] = 1
            }

            //Suppressed pistol LSD.
            if sprite_index = sprPWalkSilencerLSD {
                sound_ps(sndLSDSilenced)
                ammo -= 1
                reload = 17 + random(13)
                global.shake = 5 + random(4)
                repeat(3) {
                    my_id = instance_create(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), objLSDFlame)
                    my_id.direction = dir - 20 + random(40)
                    my_id.speed = 1 + random(1)
                    my_id.image_angle = my_id.direction
                    my_id.amount = 0
                }
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objLSDFlame)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                    
                } else {
                    repeat(random(4)) {
                        my_id = instance_create(x + lengthdir_x(26, dir), y + lengthdir_y(26, dir), objBullet)
                        if instance_exists(my_id) {
                            my_id.direction = dir - 6 + random(12)
                            my_id.speed = 13 + random(4)
                            my_id.image_angle = my_id.direction
                        }
                    }
                }
                my_id = instance_create(x + lengthdir_x(16, dir - 7 - 4 * left), y + lengthdir_y(16, dir - 7 - 4 * left), objShell)
                my_id.sprite_index = sprUziShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * left - 20 + random(30)
                my_id.speed = (1 + random(3)) * global.timeMultiplier * global.timeMultiplier
                sprite_index = sprPAttackSilencerLSD
                image_speed = 0.5
                image_index = 0
                objEffector.amp = 40
            }

            //LSD Shotgun
            if sprite_index = sprPWalkShotgunLSD {

                sound_ps(sndLSDShotgun)
                scrHearPlayer()
                ammo -= 1
                reload = 5
                global.shake = 15
                repeat(8) {
                    my_id = instance_create(x + lengthdir_x(16, image_angle), y + lengthdir_y(16, image_angle), objLSDFlame)
                    my_id.direction = image_angle - 20 + random(40)
                    my_id.speed = 1 + random(1)
                    my_id.image_angle = my_id.direction
                    my_id.amount = amount * 2
                    if my_id.amount > 1 my_id.amount = 1
                }
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objLSDFlame)
                    my_id.image_angle = image_angle
                    global.dir = dir
                    with my_id {
                        move_contact_solid(global.dir, 16)
                    }
                    
                } else {


                    repeat(12) {
                        my_id = instance_create(x + lengthdir_x(16, image_angle), y + lengthdir_y(16, image_angle), objBullet)
                        my_id.sprite_index = sprBulletLSD
                        if instance_exists(my_id) {
                            my_id.direction = image_angle - 8 + random(16)
                            my_id.speed = 12 + random(4)
                            my_id.image_angle = my_id.direction
                        }
                    }
                }
                my_id = instance_create(x + lengthdir_x(5, dir - 5 * image_yscale), y + lengthdir_y(5, dir - 5 * image_yscale), objShell)
                my_id.sprite_index = sprShotgunShell
                my_id.image_angle = dir
                my_id.direction = dir - 90 * image_yscale - 20 + random(30)
                my_id.speed = 1 + random(3)
                image_index = 0
                image_speed = 0.5
                sprite_index = sprPAttackShotgunLSD
            }


            //FLAMETHROWER
            if sprite_index = sprPWalkFlamethrower {
                sprite_index = sprPAttackFlamethrower
                image_speed = 1

                sound_ps(sndFlamethrowerStart)

                if mouse_check_button(mb_left) {
                    if !sound_isplaying(sndFlamethrower) {
                        sound_ps(sndFlamethrower)
                    }
                } else if mouse_check_button_released(mb_left) {
                    if sound_isplaying(sndFlamethrower) {
                        sound_stop(sndFlamethrower)
                    }
                    sound_ps(sndFlamethrowerEnd)
                }

                scrHearPlayer()
                ammo -= 1
                reload = 1
                global.shake = 7
                mask_index = sprWeaponMask
                if place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolid) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objSolidCaster) or place_meeting(x + lengthdir_x(8, dir), y + lengthdir_y(8, dir), objWall) {
                    my_id = instance_create(x, y, objFlameSmoke)
                    global.dir = dir
                    with my_id move_contact_all(global.dir, 26)
                } else {
                    my_id = instance_create(x + lengthdir_x(20, dir), y + lengthdir_y(20, dir), objFlame)
                    if instance_exists(my_id) {
                        my_id.direction = dir - 1 + random(2)
                        my_id.speed = 8
                        my_id.image_angle = my_id.direction
                        if instance_exists(lastflame) my_id.target = lastflame
                        lastflame = my_id
                    }
                }
                objEffector.amp = 50
                    //mask_index=sprMask
            }
            scrCheckUsedGuns()
        }

