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
if (scrIsGang(object_index))
	bottom = sprEHeadStomp;
if (scrIsPolice(object_index))
	bottom = sprPoliceHeadBashed;
else
	bottom = sprEHeadStomp;

