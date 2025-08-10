x = obj_tet.x + obj_tet.image_angle;
image_angle = obj_tet.image_angle-90



if(!in && image_alpha < 1){
	image_alpha += 0.02;
if (y < obj_tet.y + sprite_get_height(spr_tet_base)/2 - 15){
	y += sign((obj_tet.y + sprite_get_height(spr_tet_base)/2 - 15) - y) *2;
}
}else{
	if(!out){
	in = true;	
	y = obj_tet.y + sprite_get_height(spr_tet_base)/2 - 15
	}else{
		image_alpha -= 0.05;
		y -= 4
		if(image_alpha <= 0){
			instance_destroy();	
		}
	}
}

if(latched){
	obj_player.x = x;
	obj_player.y = y + sprite_height*2.5;
	obj_player.v_spd = 0;
	obj_player.h_spd = 0;
}



