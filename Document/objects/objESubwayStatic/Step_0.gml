global.my_id = id;
global.test = 0;
if (instance_exists(objSubwayKnockedOut))
	alert = 1;
if (alert == 1)
{
	direction = scrRotate(direction, point_direction(x, y, objPlayer.x, objPlayer.y), 6);
}

with (objPlayer)
{
	if (sprite_index == sprPAttackBat || sprite_index == sprPAttackClub || sprite_index == sprPAttackPipe
		|| sprite_index == sprPAttackChain || sprite_index == sprPAttackSkateboard)
	{
		if (place_meeting(x + lengthdir_x(12, 180), y + lengthdir_y(12, 180), global.my_id))
			global.test = 1;
	}
	
	if (sprite_index == sprPAttackSword || sprPAttackChainsaw || sprite_index == sprPAttackKnife
		|| sprite_index == sprPAttackCleaver || sprite_index == sprPAttackKatanaSpecial)
	{
		if (place_meeting(x + lengthdir_x(16, 180), y + lengthdir_y(16, 180), global.my_id))
			global.test = 2;
	}
	
	if (sprite_index == sprPAttackPunch || sprite_index == sprPAttackDrill || sprite_index == sprPAttackUnarmed1)
	{
		if (place_meeting(x + lengthdir_x(16, 180), y + lengthdir_y(16, 180), global.my_id))
			global.test = 3;
	}
}

if (global.test > 0)
{
	if (global.test < 3)
	{
		pdir = point_direction(objPlayer.x, objPlayer.y, x, y);
		scrMeleeBlood(x, y);
		
		my_id = instance_create(x, y, objDeadBody);
		my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
		my_id.speed = 2;
		my_id.sprite_index = sprESubwayDead;
		
		my_id = instance_create(x + lengthdir_x(6, direction - 180), y + lengthdir_y(6, direction - 180), objPoliceHat);
		my_id.direction = direction - 180;
		my_id.speed = 1;
		my_id.sprite_index = sprInspectorHat;
		
		if (global.test == 1)
			my_id.image_index = 0;
		else
		{
			sound_play(choose(sndCut1, sndCut2));
			my_id.image_index = 3;
		}
		my_id.image_angle = my_id.direction;
		sound_play(sndDoorHit);
		sound_play(choose(sndHit, sndHit1, sndHit2, sndHit3));
	}
	
	if (global.test == 3)
	{
		my_id = instance_create(x, y, objSubwayKnockedOut);
		my_id.direction = point_direction(objPlayer.x, objPlayer.y, x, y);
		my_id.speed = 2;
		my_id.angle = my_id.direction;
		sound_play(sndDoorHit);
	}
	
	if (sprite_index == sprESubwayBriefcase)
	{
		my_id = instance_create(x + lengthdir_x(6, direction - 90), y + lengthdir_y(6, direction - 90), objBriefcase);
		my_id.speed = 1 + random(1);
		my_id.friction = 0.1;
	}
	instance_destroy();
}

