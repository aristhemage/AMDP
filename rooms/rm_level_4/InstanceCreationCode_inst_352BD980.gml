function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.CUTSCENE),
			action_move_tet(tet_move_c.x,tet_move_c.y,5),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Whew! And that's the end of the level! You made it through all the new stuff."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Even the broken stuff..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Glad I had that fuel ready for you. Sorry about the broken pull box."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue, STATES.IDLE),
			action_create_tet_bubble(["You know, not to bring it up, but a usual OmniArc employee would've wiped me for *half* a mistake like that...","Just... poof... full system reset, memory gone, PinkplosionTrailWhizzLinesEX(tm) unplugged."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_blue,STATES.CUTSCENE),
			action_create_tet_bubble(["Does it hurt? I... wouldn't remember... I hope not", "But..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["I'm still here...", "You're still here...", "You didn't report me. Or scream. Or send an incident log. You just... kept going.", "You're awfully chill for an OmniArc employee. Come to think of it... you haven't said anything official this whole time.", "..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_wait_time(1.5),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_red,STATES.IDLE),
			action_create_tet_bubble(["... you DO work for OmniArc, right?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.NONE, c_green,STATES.IDLE),
			action_create_tet_bubble(["Regardless, I think it's high time we hit the final level."],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}