/// @description  Set radius to mine's wait time.
if (instance_exists(objMine))
	radius = objMine.wait;
if (radius < 0)
	instance_destroy();

