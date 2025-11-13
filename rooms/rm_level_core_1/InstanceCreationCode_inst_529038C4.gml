function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_wait_time(1.5),
			action_create_tet_bubble(["That's another core door... I assume it leads deeper into this labrynth."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_blue,STATES.IDLE),
			action_create_tet_bubble(["I wish I could be more helpful."]),
			action_wait_for_object_destroy(obj_text_bubble),
		
			action_set_tet(EYELIDS.SKEPTICAL, c_red,STATES.IDLE),
			action_create_tet_bubble(["Im growing tired of being useless."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Anyway, I suppose the only way forward is through."],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}