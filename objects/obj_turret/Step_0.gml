//Flip animation
if (image_index == 11){
image_speed = -1;	
}else{
	if (image_index == 0){
		image_speed = 1;
		
		if(!place_meeting(x+64,y,p_wall))
			instance_create_depth(x,y,100,obj_bullet,{direct: 1});
		if(!place_meeting(x-64,y,p_wall))
			instance_create_depth(x,y,100,obj_bullet, {direct: -1});
	
	}
}

