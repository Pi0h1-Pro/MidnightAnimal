/// @description  Properties.
index = 2;
on = 0;

image_speed = 0.5;
image_angle = random(360);

// sleep(80)

shock = instance_create(x, y, objPulseRipple);
shock.image_xscale = 1;
shock.image_yscale = shock.image_xscale;

smoke = instance_create(x, y, objSmokePuffExplosion);

// scrHearExplosion(x, y)
sound_ps(sndFlashbang);
global.shake = 10;
global.blur = 60;

/// Particles for explosion.
part_type_shape(global.smoke, pt_shape_smoke);
part_type_size(global.smoke, 0.1, 1, 0, 0);
part_type_life(global.smoke, 30, 60);
part_type_color_mix(global.smoke, c_gray, c_dkgray);
part_type_alpha2(global.smoke, 0.2, 0);
part_type_direction(global.smoke, 0, 360, 0, 0);
part_type_speed(global.smoke, 4, 10, 0, 0);
part_particles_create(global.explosion, x, y, global.smoke, 200 + random(200));

