function scrMovingPlayerExists() {
	if (instance_exists(objPlayer) && !instance_exists(objExecution))
		return true;
	else
		return false;



}
