function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_create_tet_bubble(["Think you can time the gap?"],1,false,2*room_speed),	
			
		];
		
		start_cutscene(actions)
	}	
}