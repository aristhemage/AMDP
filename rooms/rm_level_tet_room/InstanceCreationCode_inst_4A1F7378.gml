function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Welcome to my private little zone!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Don't go telling people about this now..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Feel free to explore, try out my arcade games while I think of a solution to all this."],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}