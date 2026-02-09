if (!instance_exists(objMaskMenu))
{
	if (global.maskindex == 14 || global.maskindex == 8)
		bamount = 1;
}

// global._lsys_surface
alarm[0] = 1;

scrSaveBonusList();
i = 0;
room_set_persistent(room, true);
room_persistent = true;

if (!instance_exists(objBackgroundColor))
	instance_create(x, y, objBackgroundColor);
if (!instance_exists(objTimeControl))
	instance_create(x, y, objTimeControl);
global.myscore = 0;
drawscore = 0;
if (room == rmSequence1 || room == rmSequence2 || room == rmSequence3 || room == rmSequence4 || room == rmSequence5 || room == rmSequence6 || room == rmSequence7 || room == rmSequence8 || room == rmSequence9)
{
	if (!instance_exists(objPlayer))
		instance_create(336, 268, objPlayerMouseHouse);
}

