if(key_jetpack && jetpack_fuel > 0){
	draw_sprite_ext(spr_jetpack,0,x,y-sprite_height/1.5,x_scale_vis,y_scale_vis,0,c_white,image_alpha)	
}
draw_sprite_ext(spr_player,0,x,y,x_scale_vis,y_scale_vis,image_angle,c_white,image_alpha);


if(x_scale_vis < 1){
	x_scale_vis+= 0.05;	
}else{
	x_scale_vis = 1;	
}

// Squish if dashing
if(!dashing){
	if(y_scale_vis < 1){
		y_scale_vis+= 0.05;	
	}else{
	 	y_scale_vis = 1;	
	} 
}else{
	y_scale_vis-=0.02;	
}
	
 //draw_text(x,y-64,grav);