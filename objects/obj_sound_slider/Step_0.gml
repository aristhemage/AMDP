// Let the player grab it near the object as well
if(distance_to_point(mouse_x,mouse_y) < 20 && mouse_check_button_pressed(mb_left)){
	selected = true;
}

	
if(selected){
	if(mouse_check_button_released(mb_left)){
		selected = false;	
	}
	x = clamp(mouse_x, 660, 940)
	
	// Update the sound
	var percent = (x - 660) / (940 - 660)
	percent = clamp(percent, 0, 1)

	obj_settings_master.music_volume = percent * 1.1;

}

