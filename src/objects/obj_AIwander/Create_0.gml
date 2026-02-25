/// @description Settings
energie = 2
//No animation please
image_speed = 0;

//Do I have a target?
id_target = -4;

//This is our path (if we have one)
p_path = -1;

//Current state
int_state = 0;

//What is my health?
int_health = 160;

//What is the direction of the bullet that hit us?
int_bulletDir = -5;

//Image index and image angle of the legs
int_legsImageAngle = 0;
int_legsImageIndex = 0;

//To move the AI along the path (manually)
int_pathPos = 0;

//The direction that I am currently looking while enroute on my path
int_lookThisWay = 0;

//What is my ammo?
int_ammo = 30;

//Am I aiming right now?
b_aim = false;

//This is important because we don't want perfect aim on the player, this throws it off a little bit
int_gunOffset = -5 + random(10);

//Am I crouching?
b_crouch = false;


