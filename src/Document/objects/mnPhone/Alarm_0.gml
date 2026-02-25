/// @description  Update clock.
//store the current time
t = date_current_datetime();

//get the hour portion of that time
h = date_get_hour(t);

//get the minute portion of the time.
m = date_get_minute(t);

//get the second potion of the time
s = date_get_second(t);

//show the time
text = string(h) + ":" + string(m) + ":" + string(s);

alarm[0] = room_speed;

