obj_player.state = STATES.CUTSCENE;
with(obj_cutscene_master){
	var actions = [
	action_set_var(obj_fade,"fade",FADE.IN),
	action_wait_for_var(obj_fade,"alpha",1),
	action_goto_room(rm_level_tet_room)
	];
		
	start_cutscene(actions)
}