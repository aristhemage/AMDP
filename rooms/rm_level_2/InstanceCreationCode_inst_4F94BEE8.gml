
function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Wait that's the door...", "Where's the rest of the level?", "Hold on..."]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_move_tet(4400,-300,10),
			action_wait_time(3),
			action_move_tet(4300,500,10),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["I left it in the other level...", "So... I guess I'll see you over there!"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			action_move_tet(5500,400,15),
			
			action_set_var(obj_player,"state",STATES.IDLE),

			]
			
		start_cutscene(actions)
	}
}