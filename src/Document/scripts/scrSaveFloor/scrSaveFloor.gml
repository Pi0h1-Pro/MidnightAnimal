function scrSaveFloor() {
	global.loaded=1
	objEffector.amount=0
	game_save_legacy("tempsave.sav")
	objEffector.amount=180
	global.loaded=0



}
