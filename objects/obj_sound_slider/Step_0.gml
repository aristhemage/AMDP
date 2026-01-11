var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var min_x = 660 + cam_x;
var max_x = 940 + cam_x;

// Grab
if(distance_to_point(mouse_x, mouse_y) < 20 && mouse_check_button_pressed(mb_left)){
    selected = true;
}

if(selected){
    if(mouse_check_button_released(mb_left)){
        selected = false;
		if(type == "SFX")
			audio_play_sound(snd_tet_speak,100,false,obj_settings_master.sfx_volume)	
    }

    // Move slider in room space
    x = clamp(mouse_x, min_x, max_x);

    // Percent using the exact same range
    var percent = (x - min_x) / (max_x - min_x);
    percent = clamp(percent, 0, 1);

    if(type == "Music")
        obj_settings_master.music_volume = percent * 1.1;
    else
        obj_settings_master.sfx_volume = percent * 1.1;
}


