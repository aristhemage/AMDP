function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
		   
			action_set_tet(EYELIDS.SKEPTICAL,c_blue,STATES.IDLE),
			action_wait_time(0.5),
			action_create_tet_bubble([obj_global_flags.explore_left_count >= 1 ? "There still isnt anything this way... Maybe I should add something here?" : "Nope, Level's the other way..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),
		];
		
		start_cutscene(actions)
	}	
}