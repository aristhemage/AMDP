if instance_exists(obj_DC_player){
	x = obj_DC_player.x;
	y = obj_DC_player.y;
}else{
	x = room_width/2;
	y = room_height/2;
}
state = CAMERA_STATE.FOLLOW_PLAYER;
focus = obj_DC_player