/// @description  Animate deaths.
scrMoveSolidOn();
if (!scrPlaceFree(x, y))
	speed = 0;
scrMoveSolidOff();
scrAnimateDeaths();

if (speed > 0)
{
	if (bled <= 20)
	{
		bled += 1;
		if (irandom(40) == 2)
			instance_create(x, y, objSplat);
	}
	
	if (speed > 0)
	{
		surface_set_target(objSurfacer.surf);
		repeat (4)
		{
			dir = random(360);
			length = random(4);
			myx = x + lengthdir_x(length, dir);
			myy = y + lengthdir_y(length, dir);
			draw_sprite_ext(sprBloodSpeck, random(10), myx * 2, myy * 2, 2, 2, dir, merge_color(c_red, c_maroon, 0.7), 0.8);
		}
		surface_reset_target();
	}
}

if (scrBodyIsFlying(sprite_index))
{
	if (speed < 1.5)
	{
		if (image_index < 3)
			image_index += 0.2;
		if (image_index == 3 && pool == 0 && sprite_index == sprEShotgunFly)
		{
			dir = image_angle - image_yscale;
			repeat (2)
				instance_create(x + lengthdir_x(7, dir) - 2 + random(4), y + lengthdir_y(7, dir) - 4 + random(8), objBloodPool);
			bled = 1;
			repeat (5)
			{
				my_id = instance_create(x + lengthdir_x(7, dir - 15), y + lengthdir_y(7, dir - 15), objBloodSquirt);
				my_id.image_angle = image_angle + 90 * image_yscale - 40 + random(80);
			}
			repeat (5 + random(5))
			{
				my_id = instance_create(x - 3 + random(6), y - 3 + random(6), objIntestine);
				my_id.direction = point_direction(x, y, my_id.x, my_id.y);
				my_id.speed = 1.5 + random(1.5);
			}
			repeat (5 + random(5))
			{
				my_id = instance_create(x - 3 + random(6), y - 3 + random(6), objFleshChunk);
				my_id.direction = point_direction(x, y, my_id.x, my_id.y);
				my_id.speed = 1.5 + random(1.5);
			}
			pool = 1;
		}
	}
	else
	{
		with (objWindow)
			solid = 0;
		scrFlyThroughWindow();
	}
	if (!scrPlaceFree(x, y))
		speed = 0;
	with (objWindow)
		solid = 1;
}
else
{
	if (!scrPlaceFree(x, y))
		speed = 0;
}

if (speed == 0 && bled == 0 && scrCanBleed())
{
	scrBodyBleed();
	bled = 1;
}

