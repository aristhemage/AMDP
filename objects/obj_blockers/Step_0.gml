if(instance_exists(obj_rpg_spike_enemy)){
	if(place_meeting(x,y,obj_player_rpg)){
		cutscene();
	}
}else{
	instance_destroy();	
}