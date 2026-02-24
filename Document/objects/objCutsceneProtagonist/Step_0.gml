BASIC_OBJECT_SETUP;
if (sprite_index == sprPlayerCutsceneWalk){x-=hspd;}
if (x<190) && instance_exists(objInterfaceDialogue){
	sprite_index = sprPlayerCutscene;
	if instance_exists(objInterfaceDialogue){
		with (objInterfaceDialogue) {
			visible = true;
		}
	}
}