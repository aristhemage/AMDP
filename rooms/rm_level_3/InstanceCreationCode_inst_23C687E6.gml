function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_wait_time(0.5),
			
			action_increment_var(obj_global_flags,"level_3_right_count"),
			action_set_tet(EYELIDS.SKEPTICAL, c_green,STATES.IDLE),
			action_create_tet_bubble(["Did you miss the sign?", "I want you to go left...", "There isn't anything here"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD, c_red,STATES.IDLE),
			action_create_tet_bubble(["Here... Let me make the sign bigger"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_sign_level3,"grow",true),
			action_wait_time(1),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Now, let's go to the right direction... The left...","Right?"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),


			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}