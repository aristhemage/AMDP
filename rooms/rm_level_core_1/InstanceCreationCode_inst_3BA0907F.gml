function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Woah... I suppose we need to be careful in here.","I wonder why they put my SPYKs in here?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["I guess they liked at least one of my inventions!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),
			
			]
			
		start_cutscene(actions)
	}
}