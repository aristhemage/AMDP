function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["You Did it!!! Oh my circuts you beat everything!","Wow, So, this is the end, there's isnt anymore leveling to do.", "Now... My protical is saying for me to tell you to report back to OmniArc for review..."]),
			action_wait_for_object_destroy(obj_text_bubble),

			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["And uh... possiply mandatory memory scrubbing... I wouldn't know","... I don't remember."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Standard stuff I'm sure.","Anyway, thanks for playing my hard work, it took me a long time to make all this.", "Now.. I know some of the stuff wasn't the most... Polished, but I'm sure you can be lenient on that in your review because of how fun it was, right?"]),
			action_wait_for_object_destroy(obj_text_bubble),	
			
			action_set_tet(EYELIDS.NONE, c_blue,STATES.IDLE),
			action_create_tet_bubble(["...Right?"],3),
			action_wait_for_object_destroy(obj_text_bubble),
			
				
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["I'll, uh... be here. Floating. Thinking about existence. Maybe optimizing. Maybe not. Bye? Maybe bye. Maybe see you soon. Who knows?"]),
			action_wait_for_object_destroy(obj_text_bubble),	
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}