if (global.masks[current] == 0)
	exit;
if (on == 0)
	exit;
on = 0;

with (objPlayer)
{
	reload = 30;
	image_index = 0;
	image_speed = 0.35;
	sprite_index = sprPMaskSlip;
	scrSaveFloor();
}

if (current == 0)
	objPlayer.masksprite = sprRoosterMask;
if (current == 1)
	objPlayer.masksprite = sprOwlMask;
if (current == 2)
	objPlayer.masksprite = sprTigerMask;
if (current == 3)
	objPlayer.masksprite = sprPigMask;
if (current == 4)
	objPlayer.masksprite = sprHorseMask;
if (current == 5)
	objPlayer.masksprite = sprRabbitMask;
if (current == 6)
	objPlayer.masksprite = sprWolfMask;
if (current == 7)
	objPlayer.masksprite = sprGiraffeMask;
if (current == 8)
	objPlayer.masksprite = sprCollieMask;
if (current == 9)
	objPlayer.masksprite = sprElephantMask;
if (current == 10)
	objPlayer.masksprite = sprCamelMask;
if (current == 11)
	objPlayer.masksprite = sprMonkeyMask;
if (current == 12)
	objPlayer.masksprite = sprUnicornMask;
if (current == 13)
	objPlayer.masksprite = sprFrogMask;
if (current == 14)
	objPlayer.masksprite = sprMoleMask;
if (current == 15)
	objPlayer.masksprite = sprFoxMask;
if (current == 16)
	objPlayer.masksprite = sprPantherMask;
if (current == 17)
	objPlayer.masksprite = sprOctopusMask;
if (current == 18)
	objPlayer.masksprite = sprChamelionMask;
if (current == 19)
	objPlayer.masksprite = sprFishMask;
if (current == 20)
	objPlayer.masksprite = sprBatMask;
if (current == 21)
	objPlayer.masksprite = sprWalrusMask;
if (current == 22)
	objPlayer.masksprite = sprCrocodileMask;
if (current == 23)
	objPlayer.masksprite = sprLocustMask;
if (current == 24)
	objPlayer.masksprite = sprCobraMask;
if (current == 25)
	objPlayer.masksprite = sprRatMask;
global.usedmask[current] = 1;
scrSaveAchievements();
global.maskindex = current;
objPlayer.maskindex = current;

if (file_exists(working_directory + "\\mask.nfo"))
	file_delete(working_directory + "\\mask.nfo");
file = file_text_open_write(working_directory + "\\mask.nfo");
file_text_write_string(file, string(current));
file_text_close(file);

