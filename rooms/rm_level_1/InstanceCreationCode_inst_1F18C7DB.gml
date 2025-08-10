function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
		   
			action_set_tet(EYELIDS.SKEPTICAL,c_blue,STATES.IDLE),
			action_wait_time(0.5),
			action_create_tet_bubble(["What...", "What are you doing?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD,c_red,STATES.IDLE),
			action_create_tet_bubble(["The level is to the right"] ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_create_tet_bubble(["Oh! I know! You must be exploring!", "I must tell you there isn't much over here, but I'll keep it in mind that you like to explore.", "Helps me with future level building."],1,false ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),
			
			
			
			
			
		];
		
		start_cutscene(actions)
	}	
}