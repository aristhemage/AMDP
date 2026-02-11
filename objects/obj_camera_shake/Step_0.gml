/// Vars are created in instance_create
life--
if(life >= 0){
	y += sin(current_time /30 )*y_power ;
	x += sin(current_time /30 )*x_power ;
		
}else{
	obj_player_camera.focus = obj_player
	instance_destroy();	
}