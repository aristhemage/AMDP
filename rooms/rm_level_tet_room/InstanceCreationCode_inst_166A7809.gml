function cutscene(){
	with(obj_cutscene_master){
		if(sign(obj_player.grav) == -1){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["I wouldn't have done that if I was you, there's no way back..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Or is there? Let's find out"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			start_cutscene(actions)
		}
			
		
	}
}