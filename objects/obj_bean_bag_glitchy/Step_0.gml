if(image_index == 0){
	flicker_timer--;
	if(flicker_timer <= 0){
		flicker_timer = irandom_range(5,10);	
		image_index = 1;
	}
}else{
	flicker_timer--;
	if(flicker_timer <= 0){
		flicker_timer = irandom_range(120,180);	
		image_index = 0;
	}
}