/// @description .Toggle Dev Menu
exit;
if (live_call()) return live_result;
if !instance_exists(objDeveloperMenu){
	spawn_instance(x,y,objDeveloperMenu);
}