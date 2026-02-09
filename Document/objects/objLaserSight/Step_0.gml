if (instance_exists(objPlayer))
{
	image_angle = point_direction(objPlayer.x, objPlayer.y, global.mousex, global.mousey);
	
	ds_priority_clear(priTarget);
	
	// Initialise solids.
	do
	{
		varTarget = collision_line(objPlayer.x, objPlayer.y, x, y, objSolid, false, true);
		if (varTarget > 0)
		{
			ds_priority_add(priTarget, varTarget, point_distance(objPlayer.x, objPlayer.y, varTarget.x, varTarget.y));
			instance_deactivate_object(varTarget);
		}
	}
	
	until (varTarget <= 0)
	
	// Initialise solids.
	do
	{
		varTarget = collision_line(objPlayer.x, objPlayer.y, x, y, objSolidCaster, false, true);
		if (varTarget > 0)
		{
			ds_priority_add(priTarget, varTarget, point_distance(objPlayer.x, objPlayer.y, varTarget.x, varTarget.y));
			instance_deactivate_object(varTarget);
		}
	}
	
	until (varTarget <= 0)
	
	// Initialise walls.
	do
	{
		varTarget = collision_line(objPlayer.x, objPlayer.y, x, y, objWall, false, true);
		if (varTarget > 0)
		{
			ds_priority_add(priTarget, varTarget, point_distance(objPlayer.x, objPlayer.y, varTarget.x, varTarget.y));
			instance_deactivate_object(varTarget);
		}
	}
	
	until (varTarget <= 0)
	
	// Initialise enemies.
	do
	{
		varTarget = collision_line(objPlayer.x, objPlayer.y, x, y, objEnemy, false, true);
		if (varTarget > 0)
		{
			ds_priority_add(priTarget, varTarget, point_distance(objPlayer.x, objPlayer.y, varTarget.x, varTarget.y));
			instance_deactivate_object(varTarget);
		}
	}
		until (varTarget <= 0)
	
	// Initialise misc enemies.
	do
	{
		varTarget = collision_line(objPlayer.x, objPlayer.y, x, y, objMiscEnemy, false, true);
		if (varTarget > 0)
		{
			ds_priority_add(priTarget, varTarget, point_distance(objPlayer.x, objPlayer.y, varTarget.x, varTarget.y));
			instance_deactivate_object(varTarget);
		}
	}
		until (varTarget <= 0)
	
	// Initialise doors.
	do
	{
		varTarget = collision_line(objPlayer.x, objPlayer.y, x, y, objDoorV, false, true);
		if (varTarget > 0)
		{
			ds_priority_add(priTarget, varTarget, point_distance(objPlayer.x, objPlayer.y, varTarget.x, varTarget.y));
			instance_deactivate_object(varTarget);
		}
	}
		until (varTarget <= 0)
	
	instance_activate_all();
	
	if (ds_priority_size(priTarget) > 0)
	{
		varTarget = ds_priority_find_min(priTarget);
		varScale = ds_priority_find_priority(priTarget, varTarget);
	}
	else
	{
		varScale = sqrt(room_width * room_width + room_height * room_height);
	}
	x = objPlayer.x + objPlayer.hspeed + lengthdir_x(varScale, image_angle);
	y = objPlayer.y + objPlayer.vspeed + lengthdir_y(varScale, image_angle);
	
	beam_update(fxBeam, objPlayer.x + objPlayer.hspeed, objPlayer.y + objPlayer.vspeed, x, y);
	beam_update(fxBeamHot, objPlayer.x + objPlayer.hspeed, objPlayer.y + objPlayer.vspeed, x, y);
} // else beam_destroy()

