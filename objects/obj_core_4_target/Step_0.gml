if(size > 1){
	size-=0.05;	
}

image_xscale = size;
image_yscale = size;
image_angle += 15

life--;

if(life >= 50){
	move_towards_point(obj_player.x,obj_player.y-32,10);
}else{
	speed = 0;
}

if(life <= 0){

	instance_create_depth(obj_core_4_boss_handler.x, obj_core_4_boss_handler.y, 1, obj_core_4_laser, { direction: point_direction(obj_core_4_boss_handler.x, obj_core_4_boss_handler.y, x, y), speed: 16, image_angle: point_direction(obj_core_4_boss_handler.x, obj_core_4_boss_handler.y, x, y) + 90 });

	instance_destroy();	
}

