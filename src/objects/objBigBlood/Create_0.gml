sprite_index=choose(sprBigBlood1,sprBigBlood2)
image_speed=0
image_angle=random(360)
image_xscale=0.8+random(0.4)
image_yscale=image_xscale
blood_properties()
done = 0

target=sprite_get_number(sprite_index)
alarm[0]=1+random(14)
friction=0.15


