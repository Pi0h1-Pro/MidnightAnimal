// hspeed=-0.25-random(0.25)
image_speed = 0;
index = 0;


// image_blend=c_black
scale = 0.75 + random(0.25);
if (room == rmChapter || room == rmInterlude)
	speed = -(scale * scale * scale) * 3;
if (room == rmLevelSelect)
	speed = -(scale * scale * scale);
if (room == rmHospitalTitle)
	speed = -(scale * scale * scale) * 4.5;
if (room == rmMCChapter)
	speed = -(scale * scale * scale) * 7;
image_xscale = scale;
y = 80 - scale * 32;

