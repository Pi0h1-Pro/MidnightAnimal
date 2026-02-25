/// @description  Slide in.
if x2 < __view_get( e__VW.WView, 0 ) x2 += 40
if xx < 0 xx += 60

if fade = 1 {
    if amount > 0 {
        amount -= 20

    } else {
        if file_exists("tempsave.sav") {
            scrLoadFloor()
            scrResetActiveSurfaces()
        } else game_restart()
    };
};

