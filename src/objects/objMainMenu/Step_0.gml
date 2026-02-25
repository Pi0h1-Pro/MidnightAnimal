/// @description Create menu options.
if wait > 0 wait -= 1

if keyboard_check_pressed(ord(global.upkey)) event_perform(ev_keypress, ord("W"))
if keyboard_check_pressed(ord(global.downkey)) event_perform(ev_keypress, ord("S"))
if keyboard_check_pressed(ord(global.rightkey)) event_perform(ev_keypress, ord("D"))
if keyboard_check_pressed(ord(global.leftkey)) event_perform(ev_keypress, ord("A"))


