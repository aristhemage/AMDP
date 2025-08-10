remove = false;
switch(col){
	case c_lime: if(obj_player.pressure_plates[PRESSURE_PLATES.GREEN]) { remove = true; } break;
	case c_aqua: if(obj_player.pressure_plates[PRESSURE_PLATES.BLUE]) { remove = true; } break;
	case c_yellow: if(obj_player.pressure_plates[PRESSURE_PLATES.YELLOW]) { remove = true; } break;
	case c_pink: if(obj_player.pressure_plates[PRESSURE_PLATES.PINK]) { remove = true; } break;
	case c_orange: if(obj_player.pressure_plates[PRESSURE_PLATES.ORANGE]) { remove = true; } break;
}

if(remove){
	if(image_yscale > 0){
		image_yscale-= 0.05;
	}
}else{
	if(image_yscale < y_scale_int){
		image_yscale += 0.05;	
	}
}