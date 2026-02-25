texture=surface_get_texture(application_surface);
//This is a triangle wave which is used to animate the path.
//each point on the path contains a random number that determines how it moves when weighting is changed.
//(see script path_random)
weighting=(current_time/(recoil_speed*20) mod 2) -1;

