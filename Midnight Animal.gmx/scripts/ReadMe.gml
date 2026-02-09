/******XBOX 360 CONTROLLER FIGURED OUT*********\
/**BY INDIEDEVAUSTIN/LEMON FLAVOR/PLANCECRANE**\
/********GM8 PRO or NEWER**********************\
/* XBOX 360 Controller in GM uses joytsick ****\
/* functions. Every joystick function asks for*\
/* an id. Unless you are using more than 1 ****\
/* controller, ALWAYS PUT 1 AS THE ID. ********\
/**********************************************\

Use functions joystick_(letter)pos(1)
to read the analog sticks and triggers.
If you use the following (letter), here
is what will be returned to you and what
each corresponds to.
THIS WILL RETURN ANY DECIMAL BETWEEN
-1 AND 1 DEPENDING ON HOW MUCH THE 
ANALOG/TRIGGER IS PUSHED.

JOYSTICK POSITIONS:
r: -1=RS UP 1=RS DOWN
u: -1=RS LEFT 1=RS RIGHT
x: -1=LS LEFT 1= LS RIGHT
y: -1=LS UP 1=LS DOWN
z: -1=RT DOWN 1=LT DOWN

Use function joystick_pov(1) to read
the D-Pad.

THE D-PAD:
if joystick_pov(1) returns...
-1=Nothing
0=UP
90=RIGHT
180=DOWN
270=LEFT

Use function joystick_check_button(1,buttonID)
to check if a button is pressed (constant check).

BUTTONS/buttonID:
1=A
2=B
3=X
4=Y
5=LB
6=RB
7=BACK
8=START
9=LS click
10=RS click

/************************************************\

FUNCTIONS/SCRIPTS INCLUDED

-- rs_angle()
returns the angle of the right stick
returns noone if the right stick isn't moved

-- ls_angle()
returns the angle of the left stick
returns noone if the left stick isn't moved

-- button_pressed(buttonID)
returns true if the button was just pressed
works just like keyboard_check_pressed()
buttonID codes are found at the top of this page
(#1-10)

**If you want a constant check instead of a pressed
check, use: joystick_check_button(1,buttonID)

-- trigged_pressed(triggerID)
returns true if the trigger was just pressed
triggerID codes:
1=LT
-1=RT

**If you want a constant check instead of a pressed
check, use (joystick_zpos(1)>=0.9) for LT
or (joystick_zpos(1)<=-0.9) for RT
