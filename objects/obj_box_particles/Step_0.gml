if(!dir_chosen){
	switch(num){
		case 0: dir = -irandom_range(1,6); break;
		//Case 1 is directly up
		case 2: dir = irandom_range(1,6); break;
	}
	dir_chosen = true;
}

x += dir;
y += v_vel;

v_vel += 0.15;

life--;

if(life <= 0){
	image_alpha -=0.05;
	if(image_alpha < 0){
		instance_destroy();	
	}
}

image_angle += 7 * sign(dir)