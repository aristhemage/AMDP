function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_tet,"spin",true),
			action_create_tet_bubble(["Wheee!"],1,false,room_speed),
			
			]
			
		start_cutscene(actions)
	}
}