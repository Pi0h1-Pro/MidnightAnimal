dead = 0;
hurtindex = 0;
targetindex = 0;
image_speed = 0;
ammo = objPlayer.ammo;
scrInitMaskPos();
scrUpdateMaskPos(sprite_index);
if (scrIsGang(object_index))
	bottom = sprEGangDieKnife;
else
	bottom = sprEDieKnifeSlit;

