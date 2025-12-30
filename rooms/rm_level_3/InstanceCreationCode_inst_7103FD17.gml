function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_increment_var(obj_global_flags,"level_3_right_count"),
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_wait_time(0.5),
			action_set_var(obj_sign_level3,"grow_again",true),
			action_set_tet(EYELIDS.MAD, c_red,STATES.IDLE),
			action_create_tet_bubble(["Here... the sign is EVEN bigger now ...", "It's even covering the checkpoint its so big"]),
			action_wait_for_object_destroy(obj_text_bubble),
			

			action_wait_time(1),
			



			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}