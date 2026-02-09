function scrContactDetonator() {
	if (place_meeting(x, y, objBullet)
		|| place_meeting(x, y, objEBullet)
		|| place_meeting(x, y, objFlame)
		|| place_meeting(x, y, objPetrolBombExplosion)
		|| place_meeting(x, y, objGrenadeExplosion))
		return true;



}
