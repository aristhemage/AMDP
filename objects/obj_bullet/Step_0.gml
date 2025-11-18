x += 12 * direct;
image_angle += 15;
if(place_meeting(x,y,p_wall) && !place_meeting(x,y,obj_turret) && !place_meeting(x,y,obj_player)){
	fade = true;
}

if(fade){
	ignore_collsion = true;
	scr_fadeOut(0.3);		
}





