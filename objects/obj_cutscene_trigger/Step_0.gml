if(place_meeting(x,y,obj_player) && !obj_player.debug_invince){
	cutscene();
	
}

if(place_meeting(x,y,obj_player) && obj_cutscene_master.cutscene_active == true ){
	instance_destroy();	
}