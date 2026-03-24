if(instance_exists(obj_player)) var player = obj_player;
if(instance_exists(obj_player_rpg)) var player = obj_player_rpg;

if(place_meeting(x,y,player) && !player.debug_invince && player.cutscene_id == -1){
	cutscene();
	player.cutscene_id = id;
}

if(place_meeting(x,y,player) && obj_cutscene_master.cutscene_active == true && player.cutscene_id == id ){
	instance_destroy();	
}

if(!obj_cutscene_master.cutscene_active){
	player.cutscene_id = -1	
}