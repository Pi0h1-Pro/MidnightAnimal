blood_step();
if (speed == 0)
{
	if (image_index == 0)
	{
		repeat (3 + random(4))
		{
			my_id = instance_create(x, y, objTinyBlood);
			my_id.direction = random(360);
			my_id.speed = 3 + random(2);
			my_id.image_angle = my_id.direction;
		}
		surface_set_target(objSurfacer.surf);
		repeat (5 + random(7))
		{
			dir = random(360);
			length = 7 + random(10);
			myx = x + lengthdir_x(length, dir);
			myy = y + lengthdir_y(length, dir);
			draw_sprite_ext(sprBloodSpeck, random(10), myx * 2, myy * 2, 2, 2, dir, merge_color(c_red, c_maroon, 0.7), 0.8);
		}
		surface_reset_target();
	}
	if (image_index < target - 1)
		image_index += 0.25;
	else
		done = 1;
}

