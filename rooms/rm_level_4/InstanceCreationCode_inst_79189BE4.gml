function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.NONE, c_red,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["OH NO NO NO!!!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_red,STATES.IDLE),
			action_create_tet_bubble(["Wait...hold on...you're fine! You're fine!!", "*Echem*", "Deep pit, yes, that's... totally intentional!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_teal,STATES.IDLE),
			action_create_tet_bubble(["Welcome to the.... the Momentum Calibration Chamber. Yep. Very real. Tests your... uh... falling technique... ", "And you passed! Good hustle! 10/10 landing!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Hmmm... now how do I get you o-"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["I mean uh... Behold! A thing I don't just use to help me build these levels!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			action_create_object(obj_tet_arm,obj_tet.x,obj_tet.y),
			action_wait_time(1),
			action_create_tet_bubble(["Now hold on!"]),
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.CUTSCENE),
			
			action_wait_for_object_destroy(obj_text_bubble),
			action_move_tet(obj_player.x,4800,5),
			action_set_var(obj_tet_arm,"latched",true),
			action_move_tet(tet_move_d.x,tet_move_d.y,5),
			action_move_tet(tet_move_e.x,tet_move_e.y,5),
			action_set_var(obj_tet_arm,"latched",false),
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.IDLE),
			action_wait_time(1),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Lets not jump down again, shall we?"]),
			action_create_object(obj_spike_bunch,6688,4928),
			action_set_var(obj_tet_arm,"out",true),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}

 