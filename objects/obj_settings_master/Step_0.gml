if keyboard_check_pressed(vk_escape){
	paused = !paused;
	if (paused){
		// deactivate everything except this controller
		instance_deactivate_all(false);
		instance_activate_object(object_index);
		instance_activate_object(obj_global_flags);
		
		// Spawn the sliders
		if(!instance_exists(obj_sound_slider)){
			
			// Get current camera position
			var _cam_x = camera_get_view_x(view_camera[0]);
			var _cam_y = camera_get_view_y(view_camera[0]);
			
			_cam_middle_x = _cam_x + view_width / 2
			_cam_middle_y = _cam_y + view_height / 2
			
			instance_create_depth(660 + obj_settings_master.music_volume/1.1 * 280 , _cam_middle_y ,-1000, obj_sound_slider,{type : "Music"});
			
			instance_create_depth(660 + obj_settings_master.sfx_volume/1.1 * 280 , _cam_middle_y + 150 ,-1000, obj_sound_slider,{type : "SFX"});

		}
	}
	else{
		instance_activate_all();
		with(obj_sound_slider){
			instance_destroy();	
		}
	}
}


