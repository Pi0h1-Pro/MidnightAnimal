/// @description  Special cases.
if (reload > 0)
	exit;

// if scrIsDisarming() or
if (sprite_index == sprPEnterRage)
	exit;
if (instance_exists(objPhoneConversation))
	exit;
if (global.xbox == 1)
	exit;

/* if room = rmSequence1 or room = rmSequence2
or room = rmSequence3 or room = rmSequence4
or room = rmSequence5 or room = rmSequence6
or room = rmSequence7 or room = rmSequence8
or room = rmSequence9 or room = rmSequence10
or room = rmSequence11 or room = rmSequence12
or room = rmSequence12b or room = rmSequence13
or room = rmSequence14 {
    event_perform(ev_mouse,ev_global_right_press)
} */



with (objWindowV)
{
	if (sprite_index == sprWindowSill)
		nothing = 1;
	else
	{
		if (place_meeting(x + 16, y, objPlayer))
		{
			scrDropWeapon();
			my_id = instance_create(x + 6, y + 16, objPlayerOpenWindow);
			my_id.sprite_index = sprPClimbWindow;
			my_id.image_angle = 0;
			with (my_id)
			{
				scrInitMaskPos();
				scrUpdateMaskPos(sprite_index);
			}
			sprite_index = sprWindowSill;
			image_index = 1;
			my_id = instance_create(x - 6, y, objWindowOpen);
			my_id.image_xscale = -1;
			reload = 2;
			exit;
		}
	}
}


if (instance_exists(playerlight))
{
	playerlight.x = x;
	playerlight.y = y;
}

/* */
/// Attack.
scrPlayerAttack();

/* */
/// Check to see if firing.

if (scrIsFiring(sprite_index) && reload > 0)
{
	if (!instance_exists(objPlayerLight) && muzzle == 0)
	{
		// with objPlayerLight instance_destroy()
		playerlight = instance_create(x, y, objPlayerLight);
		muzzle = 3;
	}
}

/* */
/*  */
