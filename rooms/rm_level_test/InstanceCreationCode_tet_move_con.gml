function cutscene(){
	with(obj_cutscene_master){
		var actions = [

			action_create_tet_bubble(["One second!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.CUTSCENE),
			action_move_tet(tet_move_con2.x, tet_move_con2.y, 4),
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_create_tet_bubble(["..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			action_create_object(obj_text_flash,tet_move_con2.x-64, tet_move_con2.y, {col: c_red, txt: "Connection failed..."})
			]
			
		start_cutscene(actions)
	}
}