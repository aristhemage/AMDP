if keyboard_check_pressed(vk_escape){
	paused = !paused;
	if (paused){
		// deactivate everything except this controller
		instance_deactivate_all(false);
		instance_activate_object(object_index);
		instance_activate_object(obj_master);
		
		// Spawn the sliders
		if(!instance_exists(obj_sound_slider)){
			
			// Get current camera position
			var _cam_x = camera_get_view_x(view_camera[0]);
			var _cam_y = camera_get_view_y(view_camera[0]);
			
			_cam_middle_x = _cam_x + view_width / 2
			_cam_middle_y = _cam_y + view_height / 2
			
			var raw = obj_settings_master.music_volume / 1.1;
			var slider_x = 660 + raw * 280 + _cam_x;
			instance_create_depth(slider_x , _cam_middle_y ,-1000, obj_sound_slider,{type : "Music"});
			
			raw = obj_settings_master.sfx_volume / 1.1;
			slider_x = 660 + raw * 280 + _cam_x;
			instance_create_depth(slider_x , _cam_middle_y + 150 ,-1000, obj_sound_slider,{type : "SFX"});

		}
	}
	else{
		instance_activate_all();
		with(obj_sound_slider){
			instance_destroy();	
		}
	}
}


