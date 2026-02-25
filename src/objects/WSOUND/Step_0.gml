if(show && y > display_get_gui_height() - height) {
    y -= (game_speed/30) * rollspeed;
}
if(!show && y < display_get_gui_height() + rollspeed) {
    y += (game_speed/30) * rollspeed;
}

if(isPaused) alarm[0] += 1;

if(keyboard_check(key_volumedown) && wsound_get_volume() > 0) {
    wsound_set_volume(wsound_get_volume() - 0.025);
    valpha = 2;
    show = true;
    alarm[1] = game_speed * showduration;
}  

if(keyboard_check(key_volumeup) && wsound_get_volume() < 1) {
    wsound_set_volume(wsound_get_volume() + 0.025);
    valpha = 2;
    show = true;
    alarm[1] = game_speed * showduration;
}  

if(valpha > 0) valpha -= 0.05;

