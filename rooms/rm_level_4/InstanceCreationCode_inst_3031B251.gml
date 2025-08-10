function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),

			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Now you may be thinking to yourself...","\"That part would have been easier if I could just PULL the boxes.\" Right?", "Well, behold! I found some sticky stuff and plastered it on some of the boxes for you to cling onto!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD, c_red,STATES.IDLE),
			action_create_tet_bubble(["Be carefull though, that stuff does NOT come off easy, trust me, I would know.","Took me ages to get the gunk out of my motor, made my PinkplosionTrailWhizzLinesEX(tm) green for the longest time.", "I remember other OmniArc employees calling me GreenyMcGreenFace for a bit."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["By the way... You haven't spoken to me once yet.", "Just jumped around, is your OmniArc Microphone broken?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble(["If your microphone is broken, how will I know if you like my levels or not?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Oh well! I'll figure something out. I know I've been rambling, so onto the level, grab the box! Just walk right up to it."],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			

			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}