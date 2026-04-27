

if(array_contains(obj_master.kill_flag, id)){
	instance_destroy();	
}

if(place_meeting(x,y,obj_player_rpg)){
		obj_cutscene_master.enemy_id = id;
		with(obj_cutscene_master){
			var actions = [
					action_set_var(obj_player_rpg,"state",STATES.CUTSCENE),
					action_set_var(obj_master,"rpg_turn",TURN.PLAYER),
					action_start_battle(obj_rpg_spike_enemy)
				]		
		start_cutscene(actions);
	}
}