if(!in){
	if(image_alpha <= 1){
		image_alpha += 0.1;	
	}else{
		in = true;	
	}
}

y = lerp(y,ystart - 64,0.01);

if(in){
	if (life_time <= 0){
		image_alpha += -0.05;
		if(image_alpha <= 0){
			instance_destroy();	
		}
	}else{
		life_time--;	
	}
}