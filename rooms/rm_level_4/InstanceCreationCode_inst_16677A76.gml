function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),

			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["That's indeed one way of getting trhough...", "There are more boxes like this one ahead, still don't know why this is happening, but it makes this level much harder."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["We'll just have to figure it out together!", "Think of it as an \"Extra puzzle\" if you will. Now, onwards!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			


			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}