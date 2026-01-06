
direction = image_angle - 90;
speed = 4
image_alpha += -0.05;
image_xscale -= 0.05;
if(image_alpha <= 0){
	instance_destroy();	
}