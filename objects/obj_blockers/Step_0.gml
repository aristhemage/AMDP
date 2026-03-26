if(instance_exists(obj_rpg_spike_overworld)){
	if(place_meeting(x,y,obj_player_rpg)){
		cutscene();
	}
}else{
	instance_destroy();	
}