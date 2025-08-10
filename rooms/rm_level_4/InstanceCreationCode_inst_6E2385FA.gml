function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),

			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Huh?????","Thats... Certainly not supposed to happen. You were supposed to grab the box then pull it away, not go INSIDE the box..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			


			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}