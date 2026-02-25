/// @description Properties.
image_speed = 0.4
image_angle = random(360)

shock = instance_create(x, y, objPulseRipple)
shock.image_xscale = 0.5
shock.image_yscale = shock.image_xscale

//scrHearExplosion(x, y)
sound_ps(sndShockGrenade)
global.shake = 10
global.blur = 20

