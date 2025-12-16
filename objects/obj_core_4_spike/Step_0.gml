// Follow player before being released
if(throw_timer >= 0){
	x = obj_player.x;
	y = obj_player.y - 256;
	throw_timer--;
}else{
	// Gravity and collision handling after release
	y_vel += 0.2;
	
	if(place_meeting(x,y+y_vel+1,p_wall) && !place_meeting(x,y,obj_core_4_spike)){
		y_vel = 0;	
	}
	
	//Stop at platforms, but dont stop if its already partway through via spawning or falling
	var platform = instance_place(x,y,obj_platform);
	if(platform != noone){
		// Yes magic numbers, it works, shush.
		if(abs(platform.y - bbox_bottom + y_vel) < 5 && fall_timer > 30){
			y_vel = 0;
			stop = true;
		}
	}
	if(!stop){
		y += y_vel;
	}
}

// Fade in on spawn
if(!in){
	image_alpha += 0.05;
	if(image_alpha >= 1){
		in = true;	
	}
}

// Track falling time for platforms
if(sign(y_vel) == 1){
	fall_timer++;	
}


// Kill player on contact from below
if(distance_to_object(obj_player) < 1 && y <= obj_player.y && !obj_player.debug_invince){
	obj_player.dead = true;	
}
