if(fade == FADE.IN){
	if(!set_dir){
		alpha = 0;
		set_dir = true;
	}	
	
	if(alpha < 1){
		alpha += spd;	
	}
}

if(fade == FADE.OUT){
	if(!set_dir){
		alpha = 1;
		set_dir = true;
	}	
	
	if(alpha > 0){
		alpha += -spd;	
	}else{
		instance_destroy();	
	}
}

