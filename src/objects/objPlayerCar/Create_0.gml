done = 0
wait = 0
start = 30
enter = 0
engine=0
visited=0
doorindex = 0
trunkindex = 0

// Allow the player to interact with the trunk.
trunk = instance_exists(objPlayer)

// Create floor interior.
my_id = instance_create(x, y, objPlayerCarFloor)
my_id.image_angle = image_angle

// Create trunk interior.
my_id = instance_create(x, y, objPlayerCarTrunkInterior)
my_id.image_angle = image_angle

// Create roof.
if global.done = 1 {
    my_id = instance_create(x, y, objPlayerCarRoof)
    my_id.image_angle = image_angle
}

// Create weapon in trunk.
my_id = instance_create(x + lengthdir_x(43, image_angle + 180), y + lengthdir_y(43, image_angle + 180), objWeaponSpawn)
my_id.image_index = 1
my_id.ammo = scrGetSpecificAmmo(my_id.image_index)
my_id.image_angle = 90 + image_angle + random(10)
my_id.depth = -2


// Create interactive trunk.
my_id = instance_create(x, y, objPlayerCarTrunk)
my_id.image_angle = image_angle

// Centre on car if player doesn't exist.
if !instance_exists(objPlayer) {
    on = 1 
    camera_centre(x, y) 
    depth = -1
} else on = 0

