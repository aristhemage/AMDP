function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),

			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Whew! What a nightmare!", "Puts the \"Difficult\" in \"A Mildly Difficult Platformer\""]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Anyway, initially I wanted to have you pull the box on the pressure plate to disable the laser...","But now I'm not sure..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["You got any ideas?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			

			


			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}