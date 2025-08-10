if(place_meeting(x,y,obj_player) && !used){
	obj_player.jetpack_fuel += 40;
	used = true;
	respawn_timer = 180;
}

if(!used && image_alpha < 1){
	image_alpha += 0.05;	
}
if(used && image_alpha > 0.25){
	image_alpha += -0.05;
}

if(used){
	respawn_timer--;
	if(respawn_timer <= 0){
		used = false;	
	}
}