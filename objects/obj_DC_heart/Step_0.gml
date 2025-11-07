if(place_meeting(x,y,obj_DC_player)){
	obj_DC_player.hp = min(obj_DC_player.hp + 1, obj_DC_player.max_hp);	
	instance_destroy();
}

if(life <= 0){
	scr_fadeOut(0.05);	
}
life--;