image_speed = 0.2;
path = path_add();
reload = random(5);
bangs = 0;
current = 0;
scrInitDodger();
scrDPatrolInit();
points = current - 1;
current = 0;
legindex = 0;
objPlayer.active = 0;
objPlayer.aimon = 0;
objPlayer.dir = 90;
wait = 160;
image_angle = 90;

previousx = x;
previousy = y;
movex = 0;
movey = 0;
rollreload = 0;
rollx = 0;
rolly = 0;

