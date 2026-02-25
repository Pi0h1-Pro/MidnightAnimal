/// @description Set properties.

image_index = floor(random(sprite_get_number(sprite_index)))
image_speed = 0
image_angle = random(360)
image_xscale = random_range(1, 1.1)//1.2 + random(0.6)
image_yscale = image_xscale

i=0
dir=random(360)
sway=random(360)
on=1

fadeIn = false
fadeOut = false
stopped = false



