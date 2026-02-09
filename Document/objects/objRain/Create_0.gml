/// @description  Initialise settings.

// Set texture and colour.
tex = sprite_get_texture(sprTextureRain, choose(0, 1));
water_col = make_color_hsv(130, 90, 160);

// Horizontal range.
rain_range = room_width;

// Rain drop count (changed with scrRainSetDropCount).
rain_drops = 32;

// Direction, speed and volume.
rain_direction = 315;
rain_speed = 30;
rain_sound_volume = 1;

// Size of a single rain drop.
rain_size = 1;

// Length of a single rain drop.
rain_length = 3;

// Start the rain immediately.
alarm[0] = 1;

// Spawn rain drops.
rain[rain_drops * 2] = 0;
for (var i = 0; i < rain_drops * 2; i += 2)
{
	rain[i] = random_range(x - rain_range, x + rain_range);
	rain[i + 1] = 0;
}

// Check to see if the rain has started.
rain_started = false;

/// Collision detection.

// Enable / disable pixel-perfect collision detection.
rain_collision_precise = false;

// Use accurate collision detection (slower).
rain_collision_accurate = false;

// Number of pixels to skip in detection (0 is the most accurate, but the slowest).
rain_collision_accurate_skip = 8;

// Collision particles.
/* system = part_system_create()
p1 = part_type_create()
part_type_speed(p1,4,12,0,0)
part_type_alpha2(p1,1,0)
part_type_direction(p1,20,160,0,0)
part_type_shape(p1,pt_shape_disk)
part_type_color2(p1,water_col, c_white)
part_type_life(p1,2,6)
part_type_size(p1,0.02,0.06,0,0)
part_type_gravity(p1,0.2,270)

/* */
/*  */
