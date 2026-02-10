instance_destroy(); exit;

/// @description  Initialise shader.
uni_time = shader_get_uniform(shdGreyscale, "time");
var_time_var = 0;

// Set fade amount. The closer var_greyscale_fade is to 1,
// the more desaturated the image gets.
uni_greyscale_fade = shader_get_uniform(shdGreyscale, "fade");
global.var_greyscale_fade = 0.4;

