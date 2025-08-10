function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_tet(EYELIDS.MAD,c_red,STATES.CUTSCENE),
			action_move_tet(4000,200,10),
			action_set_tet(EYELIDS.MAD,c_red,STATES.IDLE),
			action_create_tet_bubble(["Hey! Get back down here!"],1,false,2*room_speed),	
			action_wait_for_object_destroy(obj_text_bubble),
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
		];
		
		start_cutscene(actions)
	}	
}