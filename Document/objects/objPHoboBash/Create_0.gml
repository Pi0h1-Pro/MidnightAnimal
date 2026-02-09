image_speed = 0;
bled = 0;
hurtindex = 0;
targetindex = 0;
energie = 0;
scrInitMaskPos();
scrUpdateMaskPos(sprite_index);
ammo = 0;
index = 0;
maskon = 1;
bottom = sprHoboDieBash;

if (global.xbox == 1)
	scrInitXboxButtons();
energie = 1 + floor(random(4));
image_index = 3;
image_speed = 0;
ammo = 0;
scrInitMaskPos();
scrUpdateMaskPos(sprPAttackBash);
maskindex = global.maskindex;

