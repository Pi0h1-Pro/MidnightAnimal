ini_open("wsound.ini");
ini_write_real("settings", "index", index);
ini_write_real("settings", "volume", wsound_get_volume());
ini_close();

