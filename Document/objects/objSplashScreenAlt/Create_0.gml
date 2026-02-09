coldir = 0;
dir = random(360);
startx = 256;
state = 0;
index1 = 7.5;
index2 = 0;
index3 = 12;
index4 = 0;
index5 = 0;
index6 = 0;
factor1 = 0;
factor2 = 0;
factor3 = 0;
factor4 = 0;
alpha = 1;
wait = 50;
wait2 = 20;

sxeasy_init(1);
scrSetPort();
global.mvol = 1;
scrLoadVol();

if (file_exists(working_directory + "\\skip"))
{
	global.currentsong = 0;
	sxeasy_play(working_directory + "\\HorseSteppin.mp3");
	room_goto(rmMenu);
}
else
{
	file = file_text_open_write(working_directory + "\\skip");
	file_text_close(file);
}

