if(!place_meeting(x,y,p_wall)){
	instance_create_depth(x,y,1,obj_box,{int_x: int_x, int_y: int_y});
	instance_destroy();
}