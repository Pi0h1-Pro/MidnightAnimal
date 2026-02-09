/// @description  Properties.
objEffector.brus = 10;
image_xscale = 2.5 + random(1);
image_yscale = image_xscale;
image_speed = 0;
image_angle = random(360);

if (scrMovingPlayerExists())
{
	if (point_distance(x, y, objPlayer.x, objPlayer.y) < 120)
		global.blur = 90;
	else
		global.blur = 60;
}

shock = instance_create(x, y, objPulseRipple);
shock.image_xscale = 1;
shock.image_yscale = shock.image_xscale;

smoke = instance_create(x, y, objSmokePuffExplosion);

alarm[0] = 600;
fade = 0;
alpha = 1;
amount = 0;
index = 2;
subindex = 2;
wait = 300;
dir = random(1000);
scrHearExplosion(x, y);
sound_ps(choose(sndGrenadeExplosion1, sndGrenadeExplosion2, sndGrenadeExplosion3, sndGrenadeExplosion4));
global.shake = 24;

// Create blast impact.
my_id = instance_create(x, y, objExplosionGround);

// Create debris.
repeat (64 + random(64))
{
	my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objDebris);
	my_id.direction = random(360);
	my_id.speed = 2 + random(4);
}

// Create shards.
repeat (64 + random(64))
{
	my_id = instance_create(x + lengthdir_x(14, direction), y + lengthdir_y(14, direction), objTinyShard);
	my_id.direction = random(360);
	my_id.speed = 3 + random(3);
}

/// Particles for explosion.
part_type_shape(global.smoke, pt_shape_smoke);
part_type_size(global.smoke, 0.1, 1, 0, 0);
part_type_life(global.smoke, 30, 60);
part_type_color_mix(global.smoke, c_gray, c_dkgray);
part_type_alpha2(global.smoke, 0.2, 0);
part_type_direction(global.smoke, 0, 360, 0, 0);
part_type_speed(global.smoke, 4, 10, 0, 0);
part_particles_create(global.explosion, x, y, global.smoke, 200 + random(200));

