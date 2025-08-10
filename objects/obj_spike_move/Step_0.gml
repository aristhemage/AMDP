latest = image_index;
if (image_index == 19) {
switch(image_angle){
	case 0: instance_create_depth(x,y-16,1,obj_warning); break;
	case 90: instance_create_depth(x+14,y,1,obj_warning); break;
	case 180: instance_create_depth(x,y+16,1,obj_warning); break;
	case -90: instance_create_depth(x-16,y,1,obj_warning); break;
	}
}

