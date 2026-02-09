scrInitMaskPos();
scrUpdateMaskPos(sprite_index);
targetindex = 0;
index = 0;
image_speed = 0.15;
dead = 0;
if (scrIsGang(object_index))
	bottom = sprEGangDieAssault; // if scrIsGang(object_index) bottom=sprPoliceHeadBashed
else
	bottom = sprEDieM16;
ammo = objPlayer.ammo;

