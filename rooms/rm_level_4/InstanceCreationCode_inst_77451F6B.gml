function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.CUTSCENE),
			action_move_tet(tet_move_c.x,tet_move_c.y,5),
			
			action_set_tet(EYELIDS.MAD, c_red,STATES.IDLE),
			action_create_tet_bubble(["Hey!!!! Get down here! I work very hard on this sort of stuff!!!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
	
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}