/// @description Zoom in with scopes.
hp += 10 // DEBUG

// Allow zoom only if the aim further key is being pressed.
if keyboard_check(vk_shift) {
    
    // 4x magnification (once) for Intervention.
    if scrCurrentWeaponExt(sprite_index) = 29 {
        if global.scopeZoom < 8 {
            global.scopeZoom += 8
            sound_ps(sndSniperZoom)
            objEffector.blackalpha = 1
        } else global.scopeZoom = 8     
    }
    
    // 6x (three times) magnification for WA2000.
    if scrCurrentWeaponExt(sprite_index) = 49 {
        if global.scopeZoom < 12 {
            global.scopeZoom += 4
            sound_ps(sndSniperZoom)
            objEffector.blackalpha = 1
        } else global.scopeZoom = 12  
    }
}

view_zoom_type = "out"
view_zoom_step = 1

