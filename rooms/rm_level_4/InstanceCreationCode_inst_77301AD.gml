function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),

			action_set_tet(EYELIDS.HAPPY, c_green,STATES.CUTSCENE),
			action_move_tet(tet_move_a.x,tet_move_a.y,7),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Oh, that's a good idea! But you dont have enough fuel..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Hmmm... I was going to introduce this later, but without it this level would now be impossible so..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.CUTSCENE),
			action_move(obj_tet,tet_move_b.x,tet_move_b.y,5),
			action_set_var(obj_tet,"flipped", true),
			action_wait_time(1.5),
			action_set_var(obj_tet,"flipped", false),
			action_create_object(obj_fuel,tet_move_b.x,tet_move_b.y),
			action_move(obj_tet,tet_move_a.x,tet_move_a.y,5),
			
			action_create_tet_bubble(["Have a fuel pack, it will make your flight longer"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			

			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}