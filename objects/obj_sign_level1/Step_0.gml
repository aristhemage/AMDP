switch(dir){
	case DIRECTIONS.DOWN:
		image_angle = -90;
		y = lerp(y,ystart+175,0.05);
		break;
		
	case DIRECTIONS.UP:
		image_angle = 90;
		y = lerp(y,ystart-90,0.05);
		break;
	
	case DIRECTIONS.RIGHT:
		x = lerp(x, xstart+ 300,0.05);
		break;
		
	case DIRECTIONS.LEFT:
		x = lerp(x, xstart- 75,0.05);
		image_angle = 180;
		break;
}

if(!faded_in){
	if(image_alpha <= 1){
		image_alpha += 0.05;	
	}else{
		faded_in = true;
	}
}

if(!instance_exists(obj_text_bubble)){
	life--;
	if(life <= 0){
		image_alpha -= 0.05;
		if(image_alpha <= 0){
			instance_destroy();	
		}
	}
}