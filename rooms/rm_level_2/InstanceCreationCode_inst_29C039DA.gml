function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Great! Now that you know all the tools to the puzzle, let's get started."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Wait, I hope you didn't think *this* was part of the *actual* level right?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Now that would be silly, my handbook on creating levels clearly states...", "\"Effective level design introduces mechanics incrementally, within controlled, low-risk environments. The player should learn new concepts through interaction, without ever realizing they're being taught.\""]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Wait, but you now know that this was the tutorial part...", "Which means... technically... I failed at not making it feel like a tutorial."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.NONE, c_yellow,STATES.CUTSCENE),
			action_create_tet_bubble(["Oh no..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Please don't report this to the committee, they probably already hate me for the whole jetpack thing."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["ANYWAY! Real level now! Very serious. Very puzzle-y. Much lasers. Let's go!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}