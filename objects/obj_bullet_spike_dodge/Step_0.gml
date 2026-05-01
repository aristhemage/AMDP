if(image_alpha < 1 && instance_exists(obj_rpg_attack)){
	image_alpha += 0.05	
}else{
	if(!created){
		switch(dir){
			case DIRECTIONS.LEFT: h_spd = -4; break;
			case DIRECTIONS.RIGHT: h_spd = 4; break;
			case DIRECTIONS.DOWN: v_spd = 4; break;
			case DIRECTIONS.UP: v_spd = -4; break;
		}
		created = true;
	}
	
	y += v_spd;
	x += h_spd;
}


if(!instance_exists(obj_rpg_attack)){
	scr_fadeOut(0.05)	
}