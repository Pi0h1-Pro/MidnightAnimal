/// @description  Set particle properties.

// Define speed.
var min_speed, max_speed;

// Define direction.
var min_dir, max_dir;

// Define gravity.
var grav;

// Define snowflake count.
var count;

// Define severity of snowfall.
severity = 2

// Define conditions based on severity.
if severity = 0 {
    min_speed = 0.5
    max_speed = 2
    min_dir = 280
    max_dir = 300
    grav = 0.1
    count = 1
}

if severity = 1 {
    min_speed = 3
    max_speed = 6
    min_dir = 300
    max_dir = 320
    grav = 0.2
    count = 4
}

if severity = 2 {
    min_speed = 6
    max_speed = 10
    min_dir = 340
    max_dir = 350
    grav = 0.3
    count = 16
}

snow = part_system_create()
part_system_depth(snow, -1100)
ps = part_type_create()
part_type_speed(ps,min_speed,max_speed,0,0)
part_type_alpha2(ps,0.4, 0.2)
part_type_direction(ps,min_dir,max_dir,0,0)
part_type_orientation(ps, 0, 359, 3, 0, false)
part_type_sprite(ps, sprSnow, false, false, true)
part_type_life(ps,250, 300)
part_type_size(ps,0.2,0.5,0.001,0)
part_type_gravity(ps,grav,290)

em = part_emitter_create(snow)
part_emitter_region(snow, em, -100, room_width, -100, room_height, ps_shape_rectangle, ps_distr_linear)

/// Stream particles.
part_emitter_stream(snow, em, ps, count)

