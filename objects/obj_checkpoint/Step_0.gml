switch(state){
	case FLAG_STATE.POLE:
		if(place_meeting(x,y,obj_player)){
			state = FLAG_STATE.ANIMATION;
			obj_player.respawn_x = x;
			obj_player.respawn_y = y - 35;
			sprite_index = spr_checkpoint_used;
			
		}
		break;
	
	case FLAG_STATE.ANIMATION:
		if(image_index >= image_number-1){
			state = FLAG_STATE.IDLE;	
			sprite_index = spr_checkpoint_idle;
		}
		
		break;	
}