
if(place_meeting(x,y,p_wall)){
	dead = true;
}

if(dead){
	scr_fadeOut(0.05);		
}else{
	y+= 16;	
}