/// @description  Console commands.

/*****************************
 * If a command has been submitted...
 *****************************/
if (console_submit(my_console))
{
	/*****************************
     * Here we can put all our commands.
     *****************************/
	
	// COMMAND: kill - kills all enemies.
	if (console_cmd(my_console, "kill"))
		with (objEnemy)
			instance_destroy();
	
	// COMMAND: setammo - set ammo to value.
	if (console_cmd(my_console, "setammo"))
	{
		if (console_value_count(my_console) == 1)
		{
			give_ammo = console_value(my_console, 1);
			
			if (is_real(give_ammo))
				objPlayer.ammo = give_ammo;
		}
	}
	
	// COMMAND: weapon - create weapon.
	if (console_cmd(my_console, "weapon"))
	{
		if (console_value_count(my_console) == 1)
		{
			index = console_value(my_console, 1);
			
			if (is_real(index))
			{
				weapon = instance_create(global.mousex, global.mousey, objWeaponSpawn);
				weapon.image_index = index;
				weapon.ammo = scrGetSpecificAmmo(index);
			}
		}
	}
	
	// COMMAND: showinfo - display information
	if (console_cmd(my_console, "showinfo"))
	{
		if (console_value_count(my_console) == 1)
		{
			index = console_value(my_console, 1);
			
			objEffector.showinfo = index;
		}
	}
	
	// COMMAND: tgm - toggle god mode.
	if (console_cmd(my_console, "tgm"))
	{
		if (console_value_count(my_console) == 1)
		{
			index = console_value(my_console, 1);
			
			global.tgm = index;
		}
	}
	
	// COMMAND: hud - toggle HUD.
	if (console_cmd(my_console, "hud"))
	{
		if (console_value_count(my_console) == 1)
		{
			index = console_value(my_console, 1);
			
			global.hud = index;
		}
	}
	
	// COMMAND: gibfest - toggle gibfest.
	if (console_cmd(my_console, "gibfest"))
	{
		if (console_value_count(my_console) == 1)
		{
			index = console_value(my_console, 1);
			
			global.gibfest = index;
		}
	}
	
	// COMMAND: rainbow - toggle rainbow mode.
	if (console_cmd(my_console, "rainbow"))
	{
		if (console_value_count(my_console) == 1)
		{
			index = console_value(my_console, 1);
			
			global.rainbow = index;
		}
	}
}

/* */
/*  */
