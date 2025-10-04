if gettrigger_r(0)>100 or gettrigger_l(0)>100 {
if !instance_exists(objPlayerMouseHouse) or answered=1 exit
if place_meeting(x+lengthdir_x(12,objPlayer.dir-180),y+lengthdir_y(12,objPlayer.dir-180),objPlayer) and called=1 {
/*with objPlayer {
instance_destroy()
instance_create(x,y,objPlayerMouseHouse)
}*/
with objPlayer {
if sprite_index=sprPWalkUnarmed or argument0=sprPAttackUnarmed1 or sprite_index=sprPAttackPunch or sprite_index=sprPAttackBash noweapon=1 else noweapon=0
if noweapon=0 {
my_id=instance_create(x,y,objWeaponThrow)
my_id.direction=random(360)
my_id.speed=2+random(1)
my_id.image_index=scrCurrentWeaponExt(sprite_index)
my_id.ammo=ammo
}
}
objPlayer.sprite_index=sprPTakePhone
objPlayer.image_index=0
objPlayer.active=0
image_index=1
scrGetMessage(0)
answered=1
sound_stop(sndPhoneCall)
sound_play(sndPhone)
global.done=1
}
}
