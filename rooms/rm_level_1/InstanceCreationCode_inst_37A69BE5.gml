function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
		    action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_wait_time(0.5),
			action_create_tet_bubble(["Hey, nice! You completed this room!", "As usual you can report if I did a good job or not on your OmniArc grading sheet."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD,c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Please don't wipe me again, it's very painful. I also worked very hard coming up with the SPYK."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue, STATES.IDLE),
			action_create_tet_bubble(["I even gave it a name and everything... that's, like, extra credit, right?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.CLOSED, c_yellow, STATES.IDLE),
			action_create_tet_bubble(["...It's a very *pointy* name."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_blue, STATES.IDLE),
			//Add sweat? Here?
			action_create_tet_bubble(["Oh no, what if you don't think it's pointy enough.", "Is it not pointy?!", "I can make it pointier!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			//Kill sweat? here?
			action_set_tet(EYELIDS.SKEPTICAL, c_blue, STATES.IDLE),
			action_create_tet_bubble(["...Maybe if it was on fire? Or had little hats?", "Or little hats on fire?", "I'll workshop it. Don't you worry!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green, STATES.IDLE),
			action_create_tet_bubble(["Anyway! Good job again! Onward!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_move_tet(5500,100,5),
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_var(obj_door,"unlocked",true),

			
			
			
			
		];
		
		start_cutscene(actions)
	}	
}