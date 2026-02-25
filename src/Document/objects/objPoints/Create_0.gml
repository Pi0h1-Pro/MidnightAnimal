text=""
alpha = 1
vspeed = -2
gravity = 0.1
gravity_direction = 270

/// Miscellaneous effects.
objEffector.scratch = 100
create_thought(make_color_rgb(irandom(255),irandom(255),irandom(255)), global.albedo, random_range(0.1, 0.3), random_range(50, 60), choose(0, 0, 0, 180, 180, 10, -10))
if floor(random(12)) = 2 sound_ps(choose(laugh0,laugh1,laugh2,laugh3,laugh4,laugh5,laugh6,laugh7,laugh8,laugh9))


