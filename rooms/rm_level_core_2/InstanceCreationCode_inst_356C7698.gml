function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
		   
			action_set_tet(EYELIDS.SKEPTICAL,c_blue,STATES.IDLE),
			action_wait_time(0.5),
			action_create_tet_bubble(obj_master.explore_left_count >= 1 ? ["You love exploring everything don'tcha.","Sadly it doesn't look like anything is over here"] : ["Wow what a pointless area.", "I would never make a usless area."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),
		];
		
		start_cutscene(actions)
	}	
}