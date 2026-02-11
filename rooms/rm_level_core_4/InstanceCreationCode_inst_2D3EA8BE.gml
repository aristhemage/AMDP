function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Hmm... That's too long for even your jetpack.","What to do... What to do..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_wait_time(2),
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Oh! I know","Hold on..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.CLOSED, c_grey,STATES.IDLE),
			action_wait_time(2),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["It looks like I still have access to certain files.","...Could have been usefull earlier I know but...", "You should have the ability to dash now! Just use CTRL on your OmniArc keyboard when in the air!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Or I guess just you normal... \"Non\" OmniArc keyboard haha...","Whoever you are..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			action_set_var(obj_player,"dashing_unlocked",true),
			

			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
		
		];
		
		start_cutscene(actions)
	}	
}
