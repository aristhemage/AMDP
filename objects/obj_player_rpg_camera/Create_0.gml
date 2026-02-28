if instance_exists(obj_player_rpg){
	x = obj_player_rpg.x;
	y = obj_player_rpg.y;
}else{
	x = room_width/2;
	y = room_height/2;
}
state = CAMERA_STATE.FOLLOW_PLAYER;
focus = obj_player_rpg