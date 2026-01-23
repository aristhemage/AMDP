function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Ugh How long is this ", "You should totally press ctrl to dash!", "I was supposed to explain how I gave it to you but eh... Im done talking foreverrrrrrrrrr"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),

			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			
			
			action_set_var(obj_core_4_boss_handler,"start_battle",false)
		];
		
		start_cutscene(actions)
	}	
}
