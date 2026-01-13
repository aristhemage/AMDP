if(distance_to_point(mouse_x, mouse_y) < 20 && mouse_check_button_pressed(mb_left)){

	room_goto(rm_menu)
	instance_activate_all()
	obj_settings_master.paused = false


}