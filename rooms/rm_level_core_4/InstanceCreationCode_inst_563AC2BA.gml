function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_var(obj_player_camera, "state", CAMERA_STATE.FOCUS_OBJECT),
			action_create_object(obj_camera_shake,x,y,{life:120,y_power: 10, x_power: 0}),
			action_set_var(obj_player_camera, "focus", obj_camera_shake),
			action_set_tet(EYELIDS.NONE,c_yellow,STATES.CUTSCENE),
			action_wait_time(3),
			//TODO: Sound
			action_create_tet_bubble(["Woah! What on EARTH was that?","...Hope it wasn't too bad."]),
			action_wait_for_object_destroy(obj_text_bubble),

			action_set_var(obj_player_camera, "state", CAMERA_STATE.FOLLOW_PLAYER),
			
			
			

			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.FOLLOW_PLAYER),
		
		];
		
		start_cutscene(actions)
	}	
}
