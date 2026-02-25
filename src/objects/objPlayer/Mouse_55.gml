/// @description  ABILITIES 3.
if scrIsDisarming() exit //or scrIsReloading(sprite_index)
if sprite_index = sprPWalkDW or sprite_index = sprPReloadDW or sprite_index = sprPTurnDW exit
if global.active = 0 exit
if global.done = 1 exit

// Various actions.

// JOHN
if global.character = 0 scrPlayerPickUpWeapon()

// THOMAS
if global.character = 1 scrPlayerPickUpNonlethal()

// PIERRETTE
if global.character = 2 {
    if reload = 0 {
        if sprite_index = pierretteWalkSMG
            or sprite_index = pierretteWalkShotgun {
                //sprite_index = choose(pierretteAttackBaton1, pierretteAttackBaton2)
                sound_ps(sndSwingFists)
                sound_ps(sndSwing2)
                reload = 30
            }

        // Shield bash.
        if sprite_index = pierretteWalkShield {
            sprite_index = pierretteBashShield
            sound_ps(sndSwingHeavy2)
            global.shake = 10
            reload = 60
            /*if state_name = "Default" {
                if (abs(myxspeed) + abs(myyspeed)) != 0 {
                    state_switch("Dash")
                }
            }*/
        }

        image_index = 0
        image_speed = 0.4
    }
}

// SIMONE
if global.character = 3 {
    if reload = 0 and!(sprite_index = simoneWalkShield or sprite_index = simoneExecuteShield1 or sprite_index = simoneExecuteShield2) {
        sprite_index = simonePistolWhip
        image_index = 0
        image_speed = 0.4
        sound_ps(sndSwingFists)
        sound_ps(sndSwing2)
        reload = 30
    }

    // SIMONE: Execute shield.
    if sprite_index = simoneWalkShield {
        if ammo > 0 sprite_index = choose(simoneExecuteShield1, simoneExecuteShield2)
        else sprite_index = simoneExecuteShieldSnap
        image_speed = 0
        image_index = 0
        if shield = 1 shield = 0
    }
}

/* */
/*  */
