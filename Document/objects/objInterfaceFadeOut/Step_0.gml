BASIC_OBJECT_SETUP;
image_alpha -= 0.0125;

if image_alpha <= 0 {
	instance_destroy();
}