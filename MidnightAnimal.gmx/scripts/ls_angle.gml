var r, u;
r = 0
u = 0
if abs(joystick_ypos(1)) > 0.1 r = joystick_ypos(1)
if abs(joystick_xpos(1)) > 0.1 u = joystick_xpos(1)
if u = 0 and r = 0
return noone
else
    return point_direction(0, 0, u, r)
