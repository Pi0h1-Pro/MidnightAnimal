/// @description  Initialise global lighting.
glr_init(1);
glr_set_size(480, 256);
glr_enable_directional(false);
glr_enable_occlusion(false);
glr_set_occlusion_intensity(0);
glr_enable_blur(false);
glr_enable_fxaa(false);
glr_set_quality(1);

enabled = false;

// Initialise light amount.
global.lightQuantity = 0.4;

