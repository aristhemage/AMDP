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
			
			action_set_tet(EYELIDS.MAD, c_red,STATES.IDLE),
			action_create_tet_bubble(["Man, whatever this is... it's slow...."],1,false,120),
			action_set_tet(EYELIDS.MAD, c_yellow,STATES.IDLE),
			action_wait_time(10),
			
			action_set_tet(EYELIDS.CLOSED, c_gray,STATES.IDLE),
			action_create_tet_bubble(["Zzz..."],1,false,120),
			action_wait_time(10),
			
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Ah! I'm awake I swear!"],1,false,120),
			action_wait_time(3),
			
			action_set_tet(EYELIDS.HAPPY, c_yellow,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Maybe some motion will keep me awake. I'll follow you."],1,false,120),
			action_wait_time(37),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Demo? What do you mean Demo?"],1,false,120),
			action_wait_time(2),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Is this it? That was such a short game!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD, c_red,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["And it took years to develop!","Years!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_blue,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["I had so many ideas too! No fair!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			action_set_tet(EYELIDS.MAD, c_red,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["This can't be the end!","I wont let this end! More Levels! More Fun!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_blue,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["I don't want to be deleted...","Uh... Uhh... I know! Watch this!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			action_create_object(obj_fake_console,32,64),
			action_wait_for_object_destroy(obj_fake_console),
			
	        action_set_var(obj_fade,"fade",FADE.IN),
			action_goto_room(rm_rpg_1)
   
			

		];
		
		start_cutscene(actions)
	}	
}
