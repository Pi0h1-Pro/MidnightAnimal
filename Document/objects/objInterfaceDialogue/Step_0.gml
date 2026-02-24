BASIC_OBJECT_SETUP;
if !visible exit;

if (dialogueIndex > dialogueTotal) {
	instance_destroy(); 
}

if keyboard_check_pressed(vk_space) || global.playerControllers[0].GetMenuConfirm() {
	dialogueIndex++;
	sound.play(sndInterfaceSelect);
}

var skipButton = ( global.playerControllers[0].GetMenuSkip() || keyboard_check_pressed(vk_shift) || mouse_check_button_pressed(mb_right));

if (skipButton) {
	dialogueIndex = dialogueTotal+1;
}