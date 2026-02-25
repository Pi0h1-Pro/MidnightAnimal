image_speed = 0
image_index = 0

my_id = instance_create(x, y, objPlayer)
my_id.ammo = ammo
my_id.hp += my_id.max_hp

create_points("FACE BUSTER +200")
global.myscore += 200
global.combo += 1
global.combotime = 240
instance_destroy()

