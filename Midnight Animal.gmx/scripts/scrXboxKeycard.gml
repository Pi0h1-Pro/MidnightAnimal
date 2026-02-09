if gettrigger_l()>100 {
if pressltrig=0 {
pressltrig=1
if place_meeting(x,y,objPlayer) {
instance_destroy()
global.locked=0
sound_play(sndPickupWeapon)
with objPlayerHospital alarm[1]=1
}
}
} else pressltrig=0