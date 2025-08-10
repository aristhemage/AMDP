function cutscene(){
	with(obj_cutscene_master){
		var actions = [	
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Hypnotising... isnt it?"],1,false,2*room_speed),
			action_wait_for_object_destroy(obj_text_bubble),			

			]
			
		start_cutscene(actions)
	}
}