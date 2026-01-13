txt = "Options";

function onClick(){
	
	with(obj_cutscene_master){
		var actions = [
		    action_set_var(obj_settings_master,"options_called",true),
			
		];
		
		start_cutscene(actions)
	}
}