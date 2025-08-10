image_index = level;

//Do the Shaky Shaky

if (mouseover) {
	if (image_xscale < 1.2) {
		image_xscale += 0.04;
		image_yscale += 0.04;
	}
	if (dir == 0) {
		if (image_angle != 18) {
			image_angle += 2;	
		} else {
			dir = 1;	
		}
	} else {
		if (image_angle != -18) {
			image_angle -= 2;	
		} else {
			dir = 0;	
		}
	}
} else {
	if (image_xscale != 1) {
		image_xscale -= 0.02;
		image_yscale -= 0.02;
	}
	if (sign(image_angle) == 1) {
		if (image_angle != 0) { image_angle += -2; }	
	} else {
		if (image_angle != 0) { image_angle += 2; }	
	}
}


