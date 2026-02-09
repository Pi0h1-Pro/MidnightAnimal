/// @description  The laserturret is like a player object that is holding a gun.
// it has a recoil
alarm[0] = 1;
friction = .1; // the turret moves around randomly, so we need friction
width = 32 + random(32); // width of the laser beam
texture = surface_get_texture(application_surface); // get a texture from the application surface
seglength = width; // bullets and lasers are drawn on a path, which is like a chain. In this case, one segment in the chain is as long as it is wide.
c1 = random_color(); // inner color
c2 = random_color(); // outer color
weighting = 0; // weighting is a variable between 1-0 that animates the lasers by wiggling the chain.
recoil_speed = 15 + random(10); // the number of steps between shots.
beams = 2 + choose(1, 2, 3); // how many beams should the laser have
degrees_randomized = 5 + 2 * beams; // beams are offset by some angle, in degrees
curl = 0; // used if you want your lasers to curl in a spiral before hitting the target.

// this loop creates a path for each individual beam in the laser.
for (i = 0; i < beams; i += 1)
{
	path[i] = path_add();
	path_set_kind(path[i], 1);
	path_set_closed(path[i], 0);
}

