if (global.xbox == 1)
	scrInitXboxButtons();
energie = 1 + floor(random(4));
image_index = 3;
image_speed = 0;
ammo = 0;
active = 1;
berserk = 1;
scrInitMaskPos();
scrUpdateMaskPos(sprite_index);

