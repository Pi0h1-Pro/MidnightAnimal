fade = 0;
amount = 0;
alarm[0] = 110;

scrSetPort();
global.mvol = 1;
scrLoadVol();

if (file_exists(working_directory + "\\skip"))
{
	global.currentsong = 0;
	scrInitMusic();
	scrPlaySong(working_directory + "\\Main.mp3");
	room_goto(rmMenu);
}
else
{
	scrInitMusic();
	file = file_text_open_write(working_directory + "\\skip");
	file_text_close(file);
}

