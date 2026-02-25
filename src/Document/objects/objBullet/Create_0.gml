/// @description Set properties of bullet.
init_projectile()
alarm[1] = 240
sprite_index = sprBullet
if global.rainbow image_blend=random_color() else image_blend = c_white

/// Create grid for trail.
trail_init()
slim = 0
alarm[0] = 60

