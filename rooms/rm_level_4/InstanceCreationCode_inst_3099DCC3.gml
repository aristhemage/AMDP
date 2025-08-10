function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),

			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Don't forget you have your jetpack!","Use it in tandem with the speed block to go super far!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			

			

			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}