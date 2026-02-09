dist -= speed;
if (dist <= 0)
{
	if (speed > 0)
	{
		my_id = instance_create(x, y, objSplat);
		my_id.direction = direction;
		speed = 0;
		image_speed = 0;
		my_id.speed = 0.1;
	}
	else
	{
		if (wait > 0)
			wait -= 1;
	} // else {if !instance_exists(objBigBlood)
	
	//{ if global.blood=0 or global.surfaces=1 addToSurface(global.surf2,1)}
}

/* image_angle+=speed*diradd*2
if instance_exists(objBigBlood) {if wait<3 wait+=1}
if speed>0 {
surface_set_target(global.surf2)
repeat (2) {
dir=random(360)
length=random(4)
myx=x+lengthdir_x(length,dir)
myy=y+lengthdir_y(length,dir)
draw_sprite_ext(sprBloodSpeck,random(10),myx*2,myy*2,2,2,dir,c_white,1)
}
surface_reset_target()
}

/* */
/*  */
