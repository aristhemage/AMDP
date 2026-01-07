if(place_meeting(x,y,obj_player) && !obj_player.debug_invince && obj_player.cutscene_id == -1){
	cutscene();
	obj_player.cutscene_id = id;
}

if(place_meeting(x,y,obj_player) && obj_cutscene_master.cutscene_active == true && obj_player.cutscene_id == id ){
	instance_destroy();	
}

if(!obj_cutscene_master.cutscene_active){
	obj_player.cutscene_id = -1	
}