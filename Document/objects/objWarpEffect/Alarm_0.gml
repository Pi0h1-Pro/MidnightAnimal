for (i = 0; i < beams; i += 1)
{
	// see create event for explanation of these variables.
	path_random(objPlayer.x, objPlayer.y, global.mousex, global.mousey, path[i], seglength * 3, degrees_randomized, curl);
}
alarm[0] = (recoil_speed / 3) + random(recoil_speed);
motion_add(random(360), random(1));

