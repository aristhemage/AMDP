if(!obj_arcade_rocket.leveled_up){
	if(alpha > 0.50){
		instance_create_depth(x,y,1,obj_arcade_comet)	
		instance_destroy();
	}else{
		alpha += 0.01;
	
	}
}