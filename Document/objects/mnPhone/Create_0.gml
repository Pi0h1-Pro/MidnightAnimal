/// @description  Initialise variables.

// Disable player movement.
global.active = 0;

// Default image scale.
image_xscale = 0.25;
image_yscale = image_xscale;

// Default image angle (off the screen).
image_angle = -100;

// Default x and y coordinates.
x = 0;
y = __view_get( e__VW.HView, 0 );

// Controls whether the phone is active or not (off by default).
active = 0;

// Controls degree of fade (0 by default).
fade_alpha = 0;

// Current index (none selected by default).
image_index = 0;
image_speed = 0;

// Select index.
select = 0;

// Set delay for fade-in of elements.
delay = 0;
fade = 0;

// Display text.
display = 0;

// Animation rate for send mail icon.
mail_animation = 0;

// Animation rate for weather.
weather_animation = 0;

// Animation rate for social media.
social_animation = 0;

// Save data.
save_data();

/// Set options.
option[0] = "Resume";
option[1] = "Restart";
option[2] = "Exit";
select = 0;
wait = 20;
startx = x;
x += 4;

text = "";
alarm[0] = 1;

/// Set up analogue clock.
// As seen on SlasherXGAMES
// http://www.youtube.com/user/SlasherXGAMES

/*
algorithms to determine angles for clock hands related to times of day
HOUR HAND
where:
current_hour = hour at this moment in time
(current_minute/60) = the extra fraction angle of minute divided by 60 (total number of minutes in an hour)
30 = the number of degrees of the clock face each hour represents
*/
hourAngle = -((current_hour + (current_minute / 60)) * 30);

/* HOUR & SECOND HAND
where:
current_minute and current_second = minute and second respectively at this moment in time
6 = the number of degrees of the clock face each minute andd second represents
*/
minuteAngle = -(current_minute * 6);
secondAngle = -(current_second * 6);

/*
change current_hour, current_minute, and current_second to custom values in you don't want to show system time
e.g.
if using hour, minute and second variables for time values
then
hourAngle = -((hour + (minute/60)) * 30);
minuteAngle = -(minute * 6);
secondAngle = -(second * 6);
/*

/* */
/*  */
