function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
		    action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_wait_time(0.5),
			
			
			action_create_tet_bubble(["Last thing in this level, then I'll let you to it for realsies.", "This is a checkpoint flag."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD,c_red,STATES.IDLE),
			action_create_tet_bubble(["I never got the point of these, just don't die. It's so simple"] ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_yellow,STATES.IDLE),
			action_create_tet_bubble(["But some \"\"\"Players\"\"\" complain when I don't have them in my levels", "So I just threw in a few to appease them"] ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD,c_red,STATES.IDLE),
			action_create_tet_bubble(["I'm not explaining this feature", "People wine when it's not in my levels so they must know what they do"] ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_blue,STATES.IDLE),
			action_create_tet_bubble(["People only complain when they are fully educated on the topic... Right?", "That would be stupid if they don't."] ),
			action_wait_for_object_destroy(obj_text_bubble),
			

			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_create_tet_bubble(["Anyway, onto the level!"],1,false ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),
			
			
			
			
			
		];
		
		start_cutscene(actions)
	}	
}