txt = "Quit";

function onClick(){
	
	with(obj_cutscene_master){
		var actions = [
		    action_set_var(obj_fade,"fade",FADE.IN),
			action_wait_for_var(obj_fade,"alpha",1),
			action_end_game()	
		];
		
		start_cutscene(actions)
	}
}