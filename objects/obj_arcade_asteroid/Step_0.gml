if(!obj_arcade_rocket.leveled_up){
	y += 4;

	x += dir*h_spd
	if(y > arcade_x2.y){instance_destroy()}
	if(x > arcade_x2.x){instance_destroy()}
	if(x < arcade_x1.x){instance_destroy()}

	var laser = instance_place(x,y,obj_arcade_laser)
	if(laser != noone){
		obj_arcade_rocket.xp += 10;	
		// Add breaking animation later
		instance_destroy(laser);
		instance_destroy();
	}
}