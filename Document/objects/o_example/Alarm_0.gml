/// @description  this is an example for creating a shockwave.
// syntax: x,y,starting radius, ending radius, steps between updates of the drawing,expansion rate in % of the radius, spin (degrees per step), twist (distortion, in degrees), inner color, middle color, outer color, alpha
create_shockwave(random(room_width), random(room_height), 0, 100 + random(400), 2, .04, choose(0, beam_tolerance(60)), choose(0, beam_tolerance(90)), random_color(), random_color(), random_color(), 1);
alarm[0] = 12;

