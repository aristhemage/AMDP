function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player_camera,"state",CAMERA_STATE.FOCUS_OBJECT),
			action_set_var(obj_player_camera,"focus",boss4_eye1),
			//TODO: Sound
			action_set_var(boss4_eye1,"awake",true),
			action_wait_for_var(boss4_eye1,"eye_alpha",1),
			
			action_set_var(obj_player_camera,"state",CAMERA_STATE.FOLLOW_PLAYER),
			
			action_set_tet(EYELIDS.HAPPY,c_green),
			action_create_tet_bubble(["Oh Hello there fellow AI! We are trying to get out of here but..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_player_camera,"state",CAMERA_STATE.FOCUS_OBJECT),
			action_create_other_bubble(boss4_eye1,snd_jump1,["THREAT SPOTTED, ELIMINATING."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_player_camera,"state",CAMERA_STATE.FOLLOW_PLAYER),
			action_set_tet(EYELIDS.HAPPY,c_red),
			action_create_tet_bubble(["Oh my... Stranger friend person run!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_core_4_boss_handler,"start_battle",true),
			action_set_var(obj_player,"state",STATES.IDLE),
		];
		
		start_cutscene(actions)
	}	
}