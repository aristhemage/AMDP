function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_var(obj_player,"dashing_unlocked",true),
			action_wait_time(1),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["What.... Is this place...? "],1,false,180),
			action_wait_time(4),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Hey! That's the name of my game!"],1,false,120),
			action_wait_time(3),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Who are these people though?"],1,false,120),
			action_wait_time(25),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Oh the SPYK and D3S!"],1,false,120),
			action_wait_time(12),

			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["The others have names too? I Didn't know that"],1,false,120),
			action_wait_time(3),
			
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Neat! Let's see what's next?"],1,false,120),
			action_wait_time(3),
			
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Neat! Let's see what's next?"],1,false,120),
			action_wait_time(3),
			
			
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),

		];
		
		start_cutscene(actions)
	}	
}
