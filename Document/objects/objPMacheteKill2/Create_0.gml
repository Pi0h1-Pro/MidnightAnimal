image_speed = 0;
scrInitMaskPos();
scrUpdateMaskPos(sprite_index);
ammo = 0;
dead = 0;
if (scrIsGang(object_index))
	bottom = sprEGangDieKnife;
else
	bottom = sprEDieKnifeSlit;

