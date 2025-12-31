function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_create_tet_bubble(["I can see the next door up ahead"],1,false,30),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}