image_speed = 0;
scrInitMaskPos();
scrUpdateMaskPos(sprite_index);

energie = 2 + floor(random(2));
image_speed = 0;
knives = 0;
ammo = 0;

if (scrIsGang(object_index))
	bottom = sprEGangDieKnife;
else
	bottom = sprEDieKnife;

