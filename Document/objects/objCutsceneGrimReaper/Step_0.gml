BASIC_OBJECT_SETUP;
if (move && x < 280) {
	x+=hspd;
}

if x > 280 {
	x = 280;
}

if x >= 280 {
	fade = true;
}