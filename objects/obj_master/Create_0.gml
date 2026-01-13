ini_open("save.ini");
explore_left_count = ini_read_real("Stats","explore_left_count", 0);
level_3_right_count = ini_read_real("Stats","level_3_right_count", 0);
death_count = ini_read_real("Stats","death_count", 0);
ini_close();


can_play_music = true	
tet_room_loop_timer = 600;


// Save data

ini_open("settings.ini");

// Load sound
obj_settings_master.music_volume = ini_read_real("AUDIO", "MUSIC", 1.1);
obj_settings_master.sfx_volume   = ini_read_real("AUDIO", "SFX",   1.1);

ini_close();
