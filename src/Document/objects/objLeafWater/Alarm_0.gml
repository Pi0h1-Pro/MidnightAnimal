/// @description  Create ripples.
ripple = instance_create(x,y,objRippleLake)
ripple.image_xscale = 0.3
ripple.image_yscale = image_xscale
ripple.image_alpha = 0.8
ripple.spd = 0.01
alarm[0] = irandom_range(40,60)

