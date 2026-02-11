function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_core_4_boss_handler,"end_battle",true),
			action_wait_time(6),
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player_camera,"state",CAMERA_STATE.FOCUS_OBJECT),
			action_set_var(obj_player_camera,"focus",boss4_eye2),
			//TODO: Sound
			action_create_other_bubble(boss4_eye2,snd_jump1,["THREAT LOST... SHUTTING DOWN."]),
			action_wait_for_object_destroy(obj_text_bubble),
			action_set_var(boss4_eye2,"awake",false),
			action_wait_for_var(boss4_eye2,"eye_alpha",0),
			
			action_set_var(obj_player_camera,"state",CAMERA_STATE.FOLLOW_PLAYER),
			
			action_set_tet(EYELIDS.HAPPY,c_green),
			action_create_tet_bubble(["Wheh! That was a fight..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			action_set_var(obj_player_camera,"state",CAMERA_STATE.FOLLOW_PLAYER),
			action_set_tet(EYELIDS.MAD,c_red),
			action_create_tet_bubble(["Now what...?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_yellow),
			action_set_var(obj_player,"state",STATES.IDLE),
			
			action_wait_time(6),
			action_set_tet(EYELIDS.MAD,c_red),
			action_create_tet_bubble(["You know what, I'm tired of waiting..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_yellow),
			action_create_tet_bubble(["I wonder if I can call the room_next() command...?","Let me try..."]),
			action_wait_for_object_destroy(obj_text_bubble),	
			
			action_set_tet(EYELIDS.CLOSED,c_gray),
			action_create_tet_bubble(["..."]),
			action_wait_for_object_destroy(obj_text_bubble),	
			
			action_wait_time(3),
			action_create_tet_bubble(["Got it! See you on the other side!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			action_wait_time(1),
			
			action_set_var(obj_fade,"fade",FADE.IN),
			action_wait_for_var(obj_fade,"alpha",1),
			action_goto_room(rm_demo_end),
			
			
			
		];
		
		start_cutscene(actions)
	}	
}