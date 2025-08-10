if(state = STATES.IDLE){
	y += sin(current_time/300);	
	if(image_angle > 0){
		image_angle--;	
	}
	if(image_angle < 0){
		image_angle++;	
	}
}

//Pink stuff
if(PSTimer <= 0 && image_alpha == 1){
	PSTimer = 10;
	
	if(!instance_exists(obj_tet_arm)){instance_create_depth(x,y+sprite_height/2,1,obj_pink_stuff, {image_angle: image_angle});}
}else{
	PSTimer--;	
}


if(state == STATES.MOVING){
	if(distance_to_point(ex,ey) > 0){
		tet_goto(ex,ey,6);	
	}else{
		state = STATES.IDLE;
		ex = 0;
		ey = 0;
	}
}

if(state == STATES.FOLLOW_PLAYER){
	var xAdj = 0;
	var yAdj = 0;
	//Flip position based off of player location
	if(obj_player.x > room_width/2){xAdj = - 180;}else{xAdj = 180;}	
	if(obj_player.y < room_height/6){yAdj = 100;}else{yAdj = -100;}	
	
	//Determine the speed
	if(distance_to_object(obj_player) > 500){
		if(distance_to_object(obj_player) > 1000){
			spd = 200;	
		}else{
			spd = 20;
		}
	}else{
		if(abs(obj_player.h_spd) != 0){
			spd = abs(obj_player.h_spd)
		}else{
			spd = 5;	
		}
	}
	
	//Actually go to player
	if(distance_to_point(obj_player.x + xAdj,obj_player.y + yAdj) > 20){
		tet_goto(obj_player.x + xAdj,obj_player.y + yAdj,spd);
	}
	
	//Go back to angle 0 if not moving or spinning
	if(!spin){
		if(x = xprevious){
			if(image_angle < 0){
				image_angle++;	
			}else{
				if(image_angle > 0)
				image_angle--;	
			}
		}
	}

}

if(spin){
	image_angle += 15;
	if(image_angle >= 360){
		spin = false	
		image_angle = 0;
	}
}

sprite_index = flipped ? spr_tet_flipped : spr_tet_base;

if(fading){
	if(image_alpha > 0){
		image_alpha -=0.05;	
	}
}
