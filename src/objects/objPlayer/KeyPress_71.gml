with (other) {
/// Throwables.
if instance_exists(mnPhone) {
    if mnPhone.active = 1 mnPhone.active = 0
}
if global.done = 1 or global.active = 0 exit
global.current = sprite_index

if thrown = 0 {
    
    switch (global.character) {
        case 0: // JOHN
        scrPlayerThrow(sprPThrow, sndThrowFrag, objGrenade, 16)
        break;
        
        case 1: // THOMAS
        scrPlayerThrow(sprPThrow, sndThrow, objBouncyBall, 16)
        break;
        
        case 2: // PIERRETTE
        if sprite_index = pierretteWalkSMG or sprite_index = pierretteWalkShotgun
        scrPlayerThrow(pierretteThrow, sndThrow, objFlashbang, 10)
        else scrPlayerThrow(pierretteThrowShield, sndThrow, objFlashbang, 10)
        sound_ps(sndFlashbangPin)
        break;
        
        case 3: // SIMONE
        scrPlayerThrow(simoneThrow, sndThrow, objPetrolBomb, 16)
        sound_ps(sndLighter)
        break;
    }
}

}
