function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.MAD,c_red,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Really? Were you not listening?", "That was LITERALY the DUMBEST thing you could have done.", "I JUST got done explaining NOT to touch the SPYKs."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_blue,STATES.IDLE),
			action_create_tet_bubble(["Do we really need to go over how they are your mortal enemy again?", "They aren't your friends.", "They don't like hugs."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_create_tet_bubble(["I do!", "But that's besides the point.", "No touchie the SPYKie."]),
			action_wait_for_object_destroy(obj_text_bubble),
			

			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),

			
			
			
			
		];
		
		start_cutscene(actions)
	}	
}