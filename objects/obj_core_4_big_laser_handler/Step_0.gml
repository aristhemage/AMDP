// Fade in on spawn
if(!in && big_laser_timer < 150){
	image_alpha += 0.05;
	if(image_alpha >= 1){
		in = true;	
	}
}

if(big_laser_timer > 150 && !spawned){
	instance_create_depth(x,y,1,obj_core_4_big_laser);
	spawned = true;
}

big_laser_timer++;

if(big_laser_timer > 120){
	image_alpha-=0.05;
}

if(big_laser_timer > 250){
	instance_destroy();	
}