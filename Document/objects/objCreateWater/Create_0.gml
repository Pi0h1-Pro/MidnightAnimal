/// @description  Create things.

// Create fish.
if (room == rmLake)
{
	repeat (4)
	{
		fish = instance_create(irandom(room_width), irandom(room_height), objFishWater);
		
		// fish.image_blend = make_colour_rgb(irandom_range(150,255),irandom_range(150,255),irandom_range(150,255))
	}
	
	// Create leaves.
	repeat (10)
	{
		sheet = instance_create(irandom(room_width), irandom(room_height), objLeafWater);
		sheet.image_blend = make_colour_rgb(irandom_range(200, 255), irandom_range(200, 255), irandom_range(200, 255));
	}
}

// Create water.
instance_create(0, 0, objWaterSurface);

