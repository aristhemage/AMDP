// Save Settings
ini_open("settings.ini");

ini_write_real("AUDIO", "MUSIC", obj_settings_master.music_volume);
ini_write_real("AUDIO", "SFX",   obj_settings_master.sfx_volume);

ini_close();
