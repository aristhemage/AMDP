function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Oh no, you can't touch it.", "You arent in the right dimension for that."],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			
		
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}