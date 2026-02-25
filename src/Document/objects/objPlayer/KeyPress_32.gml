/// @description Execute enemies / dash. 
if scrIsDisarming() or reload > 0 or global.active = 0 exit

// Execute enemies.
scrPlayerExecute()

// Dash if already moving.
if global.character = 0 // John
or global.character = 1 // Thomas
{
    if state_name="Default" {
        if (abs(myxspeed)+abs(myyspeed)) != 0 {
        
            // Leviathan creates flurry slash.
            //if scrCurrentWeaponExt(sprite_index) = 80 instance_create(x, y, objFlurrySlash)
            sound_ps(sndDash)
            state_switch("Dash")
        }
    }
}

