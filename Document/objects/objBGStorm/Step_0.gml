if (!surface_exists(surf1))
	surf1 = surf1 == surface_create(room_width, room_height); // surface_create(192, 128)
if (!surface_exists(surf2))
	surf2 = surf2 == surface_create(room_width, room_height);

surface_copy(surf2, 0, 0, surf1);
surface_set_target(surf1);
draw_surface_ext(surf2, 0, 0, 1, 1, 0, c_white, 0.99);
i = 0;
repeat (16)
{
	draw_sprite_ext(sprSpread, spreadindex[i], spreadx[i], spready[i], spreadscale[i], spreadscale[i], spreadangle[i], c_white, 1);
	if (global.blink > 0)
		addspeed = 1;
	else
		addspeed = 0;
	spreadindex[i] += 0.15 + addspeed * 0.5;
	spreadx[i] += xspeed[i] * (1 + addspeed * 4);
	spready[i] += yspeed[i] * (1 + addspeed * 4);
	if (spreadindex[i] > 28)
	{
		spreadindex[i] = 0;
		dir = random(360);
		xspeed[i] = lengthdir_x(0.15, dir);
		yspeed[i] = lengthdir_y(0.15, dir);
		spreadx[i] = random(192);
		spready[i] = random(102);
		spreadangle[i] = random(360);
		spreadscale[i] = 1 + random(1);
	}
	i += 1;
}
surface_reset_target();

// Control thunder.
if (thunderon == 1)
{
	if (global.blink == 0 && round(random(240)) == 2)
	{
		thunder = 1;
		if (on == 0)
		{
			if (wait > 0)
				wait -= 1;
			else
			{
				sound_play(choose(sndLightning1, sndLightning2, sndLightning3));
				on = 1;
				start_time = current_time;
			}
		}
		else
		{
			if (current_time - start_time >= 5000)
			{
				instance_destroy();
				exit;
			}
			global.shake = 5;
			if (current_time - start_time < 1500)
			{
				global.shake = (current_time - start_time) * (5 / 1500);
			}
			if (current_time - start_time > 3500)
			{
				global.shake = (2000 - (current_time - start_time - 3500)) * (5 / 1500);
			}
		}
	}
}

