function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_tet(EYELIDS.HAPPY,c_green),
			action_set_var(obj_core_4_boss_handler,"start_battle",true)
		];
		
		start_cutscene(actions)
	}	
}