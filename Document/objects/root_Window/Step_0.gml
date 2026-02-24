if instance_exists(root_Menu)
{
	if !(root_Menu.isPaused)
	{
		instance_destroy();
	}
}