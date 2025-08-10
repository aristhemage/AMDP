function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_tet(EYELIDS.MAD,c_red,STATES.CUTSCENE),
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.MAD,c_red,STATES.IDLE),
			action_create_tet_bubble(["Or you can just go over it...", "You know I work very hard on these levels.", "Can you at lease play fairly?"],1,false),	
			action_wait_for_object_destroy(obj_text_bubble),
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
		];
		
		start_cutscene(actions)
	}	
}