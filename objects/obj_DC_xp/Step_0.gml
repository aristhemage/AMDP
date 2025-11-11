if(!global.paused){
	if(distance_to_object(obj_DC_player) < obj_DC_player.xp_range){
		var dir = point_direction(x,y,obj_DC_player.x,obj_DC_player.y)
		x += lengthdir_x(5,dir)	
		y += lengthdir_y(5,dir)	
	}
	image_xscale = max(1,amount/2);
	image_yscale = max(1,amount/2);
}
