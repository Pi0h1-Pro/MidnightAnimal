if gettrigger_r(0)>100 or gettrigger_l(0)>100 {
if !instance_exists(objPlayer) or on=0 exit
if place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
instance_destroy()
sound_play(sndPickupWeapon)
}
}
