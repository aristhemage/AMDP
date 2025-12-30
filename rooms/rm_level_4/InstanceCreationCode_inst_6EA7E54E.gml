function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),

			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Whoops you fell!", "Best way to get out of here is dying! What fun~"]),
			action_wait_for_object_destroy(obj_text_bubble),
			


			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}