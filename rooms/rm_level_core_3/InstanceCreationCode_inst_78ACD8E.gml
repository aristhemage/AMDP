function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_create_tet_bubble(["Nice puzzling in the dark!"],1,false,180),


			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}