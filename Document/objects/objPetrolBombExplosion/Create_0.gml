image_speed = 0;
index = 0;
image_angle = random(360);
sound_ps(sndExplode);
image_xscale = 0.5 + random(1);
image_yscale = image_xscale;
damage = 10 + random(10);

repeat (30)
{
	my_id = instance_create(x, y, objFlameParticle);
	my_id.direction = random(360);
	my_id.speed = 2 + random(3);
	my_id.friction = 0.15;
}

smoke_splash = instance_create(x, y, objSmokePuffExplosion);

// repeat(2 + random(2)) flames = instance_create(x - sprite_width / 2 + random(sprite_width), y - sprite_height / 2 + random(sprite_height), objTinyFire)

repeat (2)
{
	fire = instance_create(x, y, objFireMedium);
	fire.image_xscale = (image_xscale + 1) * random_range(0.75, 1.2);
	fire.image_yscale = fire.image_xscale;
}

ground = instance_create(x, y, objExplosionGround);
ground.image_xscale = image_xscale + 1;
ground.image_yscale = ground.image_xscale;

/// Particles for explosion.
part_type_shape(global.smoke, pt_shape_smoke);
part_type_size(global.smoke, 0.1, 1, 0, 0);
part_type_life(global.smoke, 20, 30);
part_type_color_mix(global.smoke, c_gray, c_dkgray);
part_type_alpha2(global.smoke, 0.2, 0);
part_type_direction(global.smoke, 0, 360, 0, 0);
part_type_speed(global.smoke, 4, 10, 0, 0);
part_particles_create(global.explosion, x, y, global.smoke, 200 + random(200));

