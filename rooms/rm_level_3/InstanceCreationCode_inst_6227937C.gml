function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_wait_time(0.5),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_green,STATES.IDLE),
			action_create_tet_bubble(obj_global_flags.level_3_right_count == 0 ? ["Did you miss the sign below?", "I want you to go left...", "There isn't anything here"]: ["Seriously, What's with the obsession with this way?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			


			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}