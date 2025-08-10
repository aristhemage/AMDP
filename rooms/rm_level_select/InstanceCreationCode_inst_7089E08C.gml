level = 5;

function onClick(){
	
	with(obj_cutscene_master){
		var actions = [
		    action_set_var(obj_fade,"fade",FADE.IN),
			action_wait_for_var(obj_fade,"alpha",1),
			action_goto_room(rm_level_5)
		];
		
		start_cutscene(actions)
	}
}