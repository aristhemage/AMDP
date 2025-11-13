if(place_meeting(x,y,obj_player) && keyboard_check_released(vk_enter) && unlocked){
	obj_player.state = STATES.CUTSCENE;
		with(obj_cutscene_master){
		var actions = [
		    action_set_var(obj_fade,"fade",FADE.IN),
			action_wait_for_var(obj_fade,"alpha",1),
			action_goto_room(rm_level_select)
		];
		
		start_cutscene(actions)
	}
}

if(distance_to_object(obj_player) < 96 && unlocked){
	image_speed = 1;
	if(end_of_animation(spr_door_core)){
		image_speed = 0;	
	}
}else{
	image_speed = -1;
	if(image_index <= 0){
		image_index = 0;
		image_speed = 0;
	}
}