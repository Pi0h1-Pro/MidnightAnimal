scrInitDodger()
scrEMeleeInit()
image_speed=0
image_index=random(1000)
speed=2
image_speed=0.1
my_path=path_add()
path_set_kind(my_path,1)
path_set_precision(my_path,2)
checkreload=floor(random(30))
ammo=0
alert=0
reload=0
light=0
start_x=x
start_y=y
stopchase=0
weaponfind=0
lastsprite=sprite_index
alarm[2] = 5

if instance_exists(objPlayer) and global.character = 18 instance_destroy()

