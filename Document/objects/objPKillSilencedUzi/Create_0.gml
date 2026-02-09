scrInitMaskPos();
scrUpdateMaskPos(sprite_index);
targetindex = 0;
index = 0;
image_speed = 0.25;
dead = 0;
shots = 0;
ammo = objPlayer.ammo;
if (scrIsGang(object_index))
	bottom = sprEGangDieUzi; // if scrIsGang(object_index) bottom=sprPoliceHeadBashed
else
	bottom = sprEDieUzi;

