function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_wait_time(0.5),
			action_set_tet(EYELIDS.NONE, c_green,STATES.IDLE),
			action_create_tet_bubble(["Ah! Welcome to level two OmniArc Employee!", "Glad to see you didn't wipe me, and are ready for what I have to show off in level two."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["In this level there are boxes and lasers.", "Glorious, probably-safe lasers. You'll figure it out.... Or explode trying. Either way, yay science!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_lime,STATES.IDLE),
			action_create_tet_bubble(["Oooh, this is so exciting, I usually don't get this far with employees!", "Now forth my friend, to greatness!"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}