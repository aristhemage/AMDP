function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Ah wait right there!","That's the door to the core of the game."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Or so I've been told... The door has been locked for as long as I can rememeber.","I've tried hacking into it, but alas no luck."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["You are welcome to take a crack at it, wouldn't do any harm...","...I think"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			

			action_set_var(obj_player,"state",STATES.IDLE),
			action_wait_time(1),
			action_wait_for_var_less(obj_door_core,"distance",96),
			action_set_var(obj_door_core,"unlocked",true),
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Huh??? It opened? What on earth? Did you do that?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD, c_red,STATES.IDLE),
			action_create_tet_bubble(["I've been trying for weeks and it just opened for you...","That's... Anoying to say the least."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Maybe we can figure out whats going on in there."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}