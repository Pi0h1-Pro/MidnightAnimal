if (object_index == objPlayerDead || global.paused == 1)
	exit;
if (alarm[3] <= 0)
	alarm[3] = 10;
if (scrCheckCenterOn())
	scrCenterOn(x, y);

if (!instance_exists(objLightSystem))
{
	instance_create(0, 0, objLightSystem);
}

if (!instance_exists(objMaskMenu) && global.maskon == 1 && global.maskindex == 0 && cocked == 0 && global.done == 0)
{
	scrCenterOn(x, y);
	if (global.cocked == 1)
		exit;
	if (room == rmTrainstationEntrance || room == rmApartment1Entrance || room == rmApartment2Entrance || room == rmHouse1Downstairs || room == rmHouse5Downstairs || room == rmHouse2Downstairs || room == rmHotelEntrance || room == rmBuildingFloor1 || room == rmPhoneHomEntrance || room == rmHouse4Middle || room == rmHouse3Downstairs || room == rmSwatDownstairs || room == rmOfficeEntrance || room == rmPoliceHQFloor1 || room == rmBossClubFloor1 || room == rmMansionEntrance)
	{
		if (global.paused == 1)
			nothing = 1;
		else
		{
			dir = 270;
			sprite_index = sprPCockGun;
			active = 0;
			aimon = 0;
			global.cocked = 1;
		}
	}
}

if (instance_exists(objEnemy))
	clear = 0;
else
	clear = 1;

if (room == rmTutorial)
	clear = 1;
if (global.paused == 1)
{
	exit;
}
if (!instance_exists(objEffector))
	instance_create(x, y, objEffector);
if (!instance_exists(objSurfacer))
{
	instance_create(x, y, objSurfacer);
	with (objSurfacer)
		scrSurfaceTiles();
}

// Create LSD effects.
if (global.maskindex == 13)
{
	if (!instance_exists(objLSD))
		instance_create(x, y, objLSD);
	if (!instance_exists(objLSDBlend))
		instance_create(x, y, objLSDBlend);
}

if (persistent == 1)
{
	__view_set( e__VW.XView, 0, xview );
	__view_set( e__VW.YView, 0, yview );
	with (objEffector)
	{
		vlastx = __view_get( e__VW.XView, 0 );
		vlasty = __view_get( e__VW.YView, 0 );
	}
	alarm[0] = 36;
}
else
{
	vdist = point_distance(x, y, room_width / 2, room_height / 2);
	vdir = point_direction(room_width / 2, room_height / 2, x, y);
	__view_set( e__VW.XView, 0, x + lengthdir_x(vdist * 0.2, vdir - 180) - __view_get( e__VW.WView, 0 ) * 0.5 );
	__view_set( e__VW.YView, 0, y + lengthdir_y(vdist * 0.2, vdir - 180) - __view_get( e__VW.HView, 0 ) * 0.5 );
	__view_set( e__VW.Angle, 0, lengthdir_y(vdist * (1 / 160), vdir * 2) );
	with (objEffector)
	{
		vlastx = __view_get( e__VW.XView, 0 );
		vlasty = __view_get( e__VW.YView, 0 );
	}
}

