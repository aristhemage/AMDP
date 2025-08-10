function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_wait_time(0.5),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Hello again! Like I said, the rest of the level I accidently left in here...", "So welcome to level 3..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Level 2 part 2?", "Level 2 part 2 ft. Level 3?", "Level 3 ft. Level 2?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Anyway, enough distractions! Puzzle and Platforming time."],1,false),
			action_wait_for_object_destroy(obj_text_bubble),


			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}