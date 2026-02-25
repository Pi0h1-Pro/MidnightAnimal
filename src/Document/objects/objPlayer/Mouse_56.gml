/// @description  Flamethrower.
if scrCurrentWeaponExt(sprite_index) = 28 and ammo > 0 {
    sound_ps(sndFlamethrowerEnd)
}

if fire_delay < 30 fire_delay = 30

