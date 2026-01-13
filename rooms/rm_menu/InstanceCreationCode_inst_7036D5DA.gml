txt = "Play";

function onClick(){

    var r = "rm_level_1"; // default room

    with (obj_cutscene_master) {
		// Load last saved room
        ini_open("save.ini");
        if ini_key_exists("Progress","last_room") {
            r = ini_read_string("Progress","last_room","rm_level_1");
        }
        ini_close();
    

    var actions = [
        action_set_var(obj_fade,"fade",FADE.IN),
        action_wait_for_var(obj_fade,"alpha",1),
        action_goto_room(asset_get_index(r))
    ];

    start_cutscene(actions);
	}
}
