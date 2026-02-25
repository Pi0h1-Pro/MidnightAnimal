/// @description  Deliver the goods.
sound_ps(choose(sndVendingMachine1, sndVendingMachine2))
can = instance_create(x + lengthdir_x(8, image_angle), y + lengthdir_y(8, image_angle), objSodaCan)
can.speed = 2 + random(2)
can.friction = 0.2
can.direction = image_angle - 8 + random(16)
can.image_angle = can.direction

