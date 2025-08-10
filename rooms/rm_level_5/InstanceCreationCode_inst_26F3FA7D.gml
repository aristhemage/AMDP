function cutscene(){
	with(obj_cutscene_master){
		var actions = [	
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["Smart!"],1,false,100),
			action_wait_for_object_destroy(obj_text_bubble),
			]
		start_cutscene(actions)
	}
}