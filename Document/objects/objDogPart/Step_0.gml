image_angle += diradd * speed;
{
	scrMoveSolidOn();
	if (!place_free(x, y))
	{
		lastx = x - hspeed;
		lasty = y - vspeed;
		move_bounce_solid(0);
		x = lastx;
		y = lasty;
		speed *= 0.5;
	}
	scrMoveSolidOff();
}

if (speed == 0)
{
	if (bled == 0)
	{
		bled = 1;
		scrBodyPieceBleed();
	}
}


if (bled == 1)
{
	if (wait > 0)
		wait -= 1;
	else
	{
		/*
if !place_meeting(x,y,objBigBlood) and global.surfaces=1 {
image_speed=0
surface_set_target(global.surf2)
draw_sprite_ext(sprite_index,image_index,x*3+3,y*3+3,image_xscale*3,image_yscale*3,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x*3,y*3,image_xscale*3,image_yscale*3,image_angle,image_blend,image_alpha)
surface_reset_target()
instance_destroy()

}
*/
	}
}

/* */
/*  */
