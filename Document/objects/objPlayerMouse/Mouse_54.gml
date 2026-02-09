/// @description  Special abilities.
// if release < 20
// release += 1
// else
if (sprite_index == sprPEnterRage)
	exit;
if (global.xbox == 1)
	exit;


if (room == rmSequence1 || room == rmSequence2
	|| room == rmSequence3 || room == rmSequence4
	|| room == rmSequence5 || room == rmSequence6
	|| room == rmSequence7 || room == rmSequence8
	|| room == rmSequence9 || room == rmSequence10
	|| room == rmSequence11 || room == rmSequence12
	|| room == rmSequence12b || room == rmSequence13
	|| room == rmSequence14)
{
	/* if place_meeting(x + lengthdir_x(12, dir), y + lengthdir_y(12, dir), objAnsweringMachine) {
        if objAnsweringMachine.active = 1 {
            scrGetMessage(phone)
            sprite_index = sprPTakePhone
            image_index = 0
            sound_play(sndPhone)
        }
    }*/
	
	if (place_meeting(x + lengthdir_x(12, dir), y + lengthdir_y(12, dir), objBox))
	{
		if (objBox.sprite_index == sprBox)
		{
			objBox.sprite_index = sprBoxOpen;
			objBox.image_index = 1;
			sound_play(sndBox);
		}
		else
		{
			with (objBox)
			{
				sound_play(sndPickupWeapon);
				scrGetMessage(objOpenedBox);
				my_id = instance_create(x, y, objOpenedBox);
				my_id.image_angle = image_angle;
				instance_destroy();
				global.package = 1;
				global.done = 1;
			}
		}
	}
}
else
	scrPlayerPickUp(0);

if (instance_exists(objPhoneConversation))
	exit;
if (place_meeting(x + lengthdir_x(10, dir), y + lengthdir_y(10, dir), objSecretMask) || place_meeting(x, y, objSecretMask))
{
	with (objSecretMask)
	{
		global.masks[image_index] = 1;
		global.newmask[global.newmasks] = image_index;
		global.newmasks += 1;
		sound_play(sndToken);
		my_id = instance_create(x, y, objLetterFound);
		my_id.text = "\"" + scrMaskGetName(image_index) + "\"";
		instance_destroy();
	}
	scrCheckMasks();
	exit;
}


// Tiger roar.
if (global.maskindex == 2) // and tiger<=0
{
	objEffector.amp = 40;
	sound_play(sndTiger);
	global.shake = 22;
	scrHearPlayer();
}

// Switch weapons with flamethrower and sniper.
if (global.maskindex == 15 || global.maskindex == 7)
{
	scrSwitch();
}
else
	exit;

// Dual wield spread is in Draw event.
if (sprite_index == sprPWalkDW || sprite_index == sprPReloadDW || sprite_index == sprPTurnDW)
	exit;

/* */
/*  */
