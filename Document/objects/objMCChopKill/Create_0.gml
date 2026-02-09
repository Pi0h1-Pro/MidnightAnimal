hurtindex = 0;
targetindex = 0;
image_speed = 0;
scrInitMaskPos();
scrUpdateMaskPos(sprite_index);
knives = objPlayerBiker.knives;
if (scrIsGang(object_index))
	bottom = sprEGangDieCleaver; // if scrIsPolice(object_index) bottom=sprPoliceHeadBashed
else
	bottom = sprEChopKill;

if (global.xbox == 1)
	scrInitXboxButtons();

