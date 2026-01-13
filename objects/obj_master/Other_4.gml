// Save the last room the player was in
if(room != rm_menu && room != rm_init){
ini_open("save.ini");
ini_write_string("Progress","last_room", string(room_get_name(room)));
ini_write_real("Stats","explore_left_count", explore_left_count);
ini_write_real("Stats","level_3_right_count", level_3_right_count);
ini_write_real("Stats","death_count", death_count);
ini_close();
}
