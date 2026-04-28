if(image_alpha <= 1 && life >= 0){
	image_alpha += 0.1	
}
life--;
if(life <= 0){
	scr_fadeOut(0.05)	
}