scrInitLSD();
surf = surface_create(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));
set_automatic_draw(false);
alarm[0] = 200 + random(200);
alarm[1] = 200 + random(600);
alarm[2] = 100 + random(300);
alarm[3] = 50 + random(400);
dir = 0;
amount = 0;
on = 0;
wait = 40;
black = 0;


scorex = 160;
ammox = -160;
combox = -160;
sprite = -1234;
kills = 0;
killamount = 0;
drawrestart = 0;
text_y = 0;
scratch = 0;
lastsprite = -1234;
scratch = 0;
whitealpha = 0;
noiseindex = 0;

if (instance_exists(objControl))
	with (objControl)
		instance_destroy();
if (!instance_exists(objRainbow))
	instance_create(-100, -100, objRainbow);

