/// @description  Create console.

/*****************************
* This creates the console
* system and stores it in a
* variable.
*****************************/
my_console = console_create();

/*****************************
* This allows you to override
* the default settings for the
* console system.
*****************************/
console_settings(my_console," ",false);

/*****************************
* This loads some preset commands
* into the console system.
*****************************/
console_preset(my_console);

/*****************************
* This loads all the available
* commands from a text file,
* which will be shown as suggestions
* whilst the user types.
*****************************/
//console_text_open(my_console,"commands.txt");

/*****************************
* You can also add individual
* commands to the suggestions
* list.
*****************************/
console_add(my_console,"showinfo (bool) - Toggle metainformation.");
console_add(my_console,"weapon (id) - Spawn weapon.");
console_add(my_console,"kill - Kill all enemies.");
console_add(my_console,"setammo (int ammo) - Set current ammo.");
console_add(my_console,"tgm (bool) - Toggle god mode.");
console_add(my_console,"hud (bool) - Toggle HUD.");
console_add(my_console,"gibfest (bool) - Toggle gibfest: chunks galore!");

/* */
/*  */
