/*** Code For Random Lightning Flashes ***/
// Create a flash
// alarm[0] , choose out these random times when to create a flash
instance_create(x, y, objFlash);
alarm[0] = choose(150, 175, 200, 225, 125, 100, 75, 50, 25, 140, 20, 95);

/* If you don't want a random flash , have a constant number eg if you want a flash every 10 seconds ,
set the alarm[0] to 300
*/

/* */
/*  */
