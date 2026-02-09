/// @description  Create underwater objects.

// Create surface.
if (!surface_exists(UnderWaterBuffer))
	UnderWaterBuffer = surface_create(WIDTH, HEIGHT);

// Start drawing objects underwater.
surface_set_target(UnderWaterBuffer);

// Draw bottom of water.
if (room == rmLake)
	draw_background_stretched(bgLakeTexture, 0, 0, WIDTH, HEIGHT);
else if (room == rmLake)
	draw_background_stretched(bgIcyWaterTexture, 0, 0, WIDTH, HEIGHT);
else if (room == rmOceanDay || room == rmOceanNight)
	draw_background_stretched(bgOceanTexture, 0, 0, WIDTH, HEIGHT);

// Fish.
if (instance_exists(objFishWater))
{
	with (objFishWater)
	{
		// Draw shadow.
		draw_sprite_ext(sprite_index, image_index, x - 20, y + 20, 0.4, 0.4, image_angle, c_black, 0.2);
		
		// Draw fish.
		draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, image_angle, c_black, 1);
	}
}

// Leaves.
if (instance_exists(objLeafWater))
{
	with (objLeafWater)
	{
		// Draw shadow.
		draw_sprite_ext(sprite_index, image_index, x - 25, y + 25, image_xscale * 0.9, image_yscale * 0.9, image_angle, c_black, 0.2);
		
		// Draw reflection.
		draw_sprite_ext(sprite_index, image_index, x, y + 7, image_xscale, image_yscale, image_angle, c_white, 0.4);
	}
}
surface_reset_target();

/// Add motion to water.

// Create surface.
if (!surface_exists(WaterBuffer))
	WaterBuffer = surface_create(WIDTH, HEIGHT);

// Draw water motion.
WaterSpeed += 1;
surface_set_target(WaterBuffer);

// Draw waves.
draw_background_tiled_ext(bgWaterTexture, WaterSpeed, 0, 3, 3, c_white, 1);
draw_background_tiled_ext(bgWaterTexture, WaterSpeed, 0, 2, 2, c_white, 0.5);
draw_background_tiled_ext(bgWaterTexture, -WaterSpeed * 0.75, -WaterSpeed * 0.3, 1.5, 1.5, c_white, 0.5);

// Draw ripples.
if (instance_exists(objRippleLake))
{
	with (objRippleLake)
		draw_self();
}
surface_reset_target();

/// Apply water effect.
var texture, r, g, b;

texture = surface_get_texture(WaterBuffer);
r = 1.1;
g = 1.1;
b = 1.2;

scrUnderwaterGraphics(UnderWaterBuffer, texture, r, g, b, 30, 0.93, 40);

