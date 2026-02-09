shinex = random(room_width);
shiney = random(room_height / 2);
star = instance_create(shinex, shiney, objStar);
star.image_alpha = choose(0.3, 0.5, 0.7, 0.9);
star.image_xscale = 0.5 + random(2);
star.image_yscale = image_xscale;
alarm[0] = 1 + random(100);

