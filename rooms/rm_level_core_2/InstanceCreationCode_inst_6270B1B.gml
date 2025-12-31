function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_tet(EYELIDS.SKEPTICAL, c_yellow,STATES.IDLE),
			action_create_tet_bubble([ obj_player.pressure_plates[PRESSURE_PLATES.GREEN] == false ? "Ah, not much of a choice...": "Now we can get through"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
		
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}