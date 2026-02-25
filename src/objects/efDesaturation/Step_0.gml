/// @description  Change amount based on room.
if room = rmYacht global.var_greyscale_fade = 0.1 else global.var_greyscale_fade = 0.5
if global.var_greyscale_fade < 0.1 global.var_greyscale_fade = 0.1
if global.var_greyscale_fade > 1 global.var_greyscale_fade = 1

