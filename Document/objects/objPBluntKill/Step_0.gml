if (hurtindex == 11)
{
	if (image_index == 0)
	{
		if (sprite_index == sprPBatKill)
		{
			scrFinishExecution(sprPWalkBat);
			sound_ps(sndBaseball);
		}
		if (sprite_index == sprPPipeKill)
			scrFinishExecution(sprPWalkPipe);
		if (sprite_index == sprPKillPot)
			scrFinishExecution(sprPWalkPot);
		if (sprite_index == sprPKillPan)
			scrFinishExecution(sprPWalkPan);
		if (sprite_index == sprPKillCrowbar)
			scrFinishExecution(sprPWalkCrowbar);
		if (sprite_index == sprPNightStickKill)
			scrFinishExecution(sprPWalkNightStick);
		if (sprite_index == sprPKillArm)
			scrFinishExecution(sprPWalkArm);
		if (sprite_index == sprPKillBust)
			scrFinishExecution(sprPWalkBust);
		if (sprite_index == sprPKillGuitar)
			scrFinishExecution(sprPWalkGuitar);
		
		my_id = instance_create(x + lengthdir_x(11, image_angle), y + lengthdir_y(11, image_angle), objBloodPool);
		my_id = instance_create(x, y, objDeadBody);
		my_id.sprite_index = sprEBluntKill;
		my_id.image_index = 11;
		my_id.image_angle = image_angle;
		instance_destroy();
	}
}

