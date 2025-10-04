global.shake=2
my_id=instance_create(x,y,objKnockedOut)
if object_get_parent(argument0)=objGang my_id.sprite_index=sprEGangGetUp
if object_get_parent(argument0)=objEnemy my_id.sprite_index=sprEGetUp
if argument0=objEnemyFat or argument0=objEnemyFatStatic my_id.sprite_index=sprEFatGetUp
if object_get_parent(argument0)=objPolice my_id.sprite_index=sprPoliceGetUp

my_id.direction=argument1
my_id.speed=2+random(2)
my_id.friction=0.15
my_id.image_angle=my_id.direction-180
my_id.startx=my_id.x
my_id.starty=my_id.y

scrEnemyDropWeapon()
instance_destroy()
