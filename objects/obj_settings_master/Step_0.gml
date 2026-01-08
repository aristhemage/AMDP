if keyboard_check_pressed(vk_escape){
	paused = !paused;
	if (paused){
		// deactivate everything except this controller
		instance_deactivate_all(false);
		instance_activate_object(object_index);
		
		// Spawn the sliders
		if(!instance_exists(obj_sound_slider)){
			
			// Get current camera position
			var _cam_x = camera_get_view_x(view_camera[0]);
			var _cam_y = camera_get_view_y(view_camera[0]);
			
			instance_create_depth(_cam_x + view_width / 2, _cam_y + view_height / 2,-1000, obj_sound_slider);

		}
	}
	else{
		instance_activate_all();
	}
}
