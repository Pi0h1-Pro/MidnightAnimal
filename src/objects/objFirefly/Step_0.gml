/// @description  Fade over time.
fade += 1 
life -= 1
if life < 0 instance_destroy()

// Ease fade by alpha.
var calc = sqr(fade / life_max) / fade;
image_alpha -= calc
image_blend = make_colour_rgb(255 * image_alpha, 255 * image_alpha, 0)

