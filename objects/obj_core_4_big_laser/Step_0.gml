if(big_laser_timer > 150){
	instance_destroy();	
}

big_laser_timer++;
x += 80

if(x > room_width + 400){
	instance_destroy();	
}