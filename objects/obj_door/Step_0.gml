if(place_meeting(x,y,obj_player) && keyboard_check_released(vk_enter) && unlocked){
	obj_player.state = STATES.CUTSCENE;
		with(obj_cutscene_master){
		var actions = [
		    action_set_var(obj_fade,"fade",FADE.IN),
			action_wait_for_var(obj_fade,"alpha",1),
			action_goto_room(obj_door.leads_to)
		];
		
		start_cutscene(actions)
	}
}