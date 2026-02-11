if(!end_battle){
	big_laser = true;
	big_laser_timer = 0;
	instance_create_depth(x,y,1,obj_core_4_big_laser_handler)
	alarm[2] = 300;
}