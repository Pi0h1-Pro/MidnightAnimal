if sprite_index = sprPReloadSniper or sprite_index = sprPReloadSuppressedMG or sprite_index = sprPReloadSilencedShotgun {

    if sprite_index = sprPReloadSuppressedMG {
        if image_index < sprite_get_number(sprite_index) - 1 {
            image_index += 0.25
            if image_index * 10 = 70 sound_play(sndReload4)
        } else {
            if objPlayer.mags > 0 {
                objPlayer.mags -= 1 ammo += (global.maxammo - ammo)
            }
            if objPlayer.mags <= 0 {
                ammo = global.maxammo objPlayer.mags = 0
            }
            //ammo+=global.maxammo
            if sprite_index = sprPReloadSuppressedMG sprite_index = sprPWalkSuppressedMG
        }
    }

    if sprite_index = sprPReloadSniper {
        if image_index < sprite_get_number(sprite_index) - 1 {
            image_index += 0.25
            if image_index * 10 = 70 sound_play(sndReload2)
        } else {
            if objPlayer.mags > 0 {
                objPlayer.mags -= 1 ammo += global.maxammo
            }
            if objPlayer.mags <= 0 {
                ammo = global.maxammo objPlayer.mags = 0
            }
            //ammo+=global.maxammo
            if sprite_index = sprPReloadSniper sprite_index = sprPWalkSniper
        }
    }


    if sprite_index = sprPReloadSilencedShotgun {
        if objPlayer.mags>0 and ammo < global.maxammo {
            if image_index * 10 = 47.5 sound_play(sndInsertShell)
            if image_index < 9 image_index += 0.25
            else {
                ammo += 1
                objPlayer.mags-=1
                image_index = 5
                sound_play(sndInsertShell)
            }
        } else {
            if image_index < sprite_get_number(sprite_index) - 1 image_index += 0.45
            else {
                sound_play(sndCockShotgun)
                sprite_index = sprPWalkSilencedShotgun
            }
        }
    }
}
