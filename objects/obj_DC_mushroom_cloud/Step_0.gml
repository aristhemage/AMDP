if(!global.paused){
	image_angle += 15;

	life--;
	if(life <= 0){
		scr_fadeOut(0.05);	
	}
}