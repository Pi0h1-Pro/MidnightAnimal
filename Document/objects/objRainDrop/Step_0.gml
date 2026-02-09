/// @description  Raindrop behaviour.

// Dictates the speed at which the raindrop falls.
height -= fallSpeed;

// If the raindrop has fallen onto the ground...
if (height <= 0)
{
	// ...create a splash...
	
	// if place_meeting(x, y, objRiver) instance_create(x, y, objWaterSplash) else
	instance_create(x, y, objSplash);
	if (instance_exists(objWaterSurface))
		instance_create(x, y, objRippleLake);
	
	// ... and destroy the object instance of the raindrop.
	instance_destroy();
}

// Restrict the rain from falling indoors or in covered regions based on the layer.
interior = tile_layer_find(1000, x, y);
covered = tile_layer_find(1001, x, y);
if (interior || covered)
	instance_destroy();

