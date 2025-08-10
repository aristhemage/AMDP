if(key_jetpack && jetpack_fuel > 0){
	draw_sprite(spr_jetpack,0,x,y-sprite_height/1.5)	
}
draw_sprite_ext(spr_player,0,x,y,x_scale_vis,y_scale_vis,image_angle,c_white,image_alpha);

	if(x_scale_vis < 1){
		x_scale_vis+= 0.05;	
	}else{
		x_scale_vis = 1;	
	}

	if(y_scale_vis < 1){
		y_scale_vis+= 0.05;	
	}else{
	 	y_scale_vis = 1;	
	} 