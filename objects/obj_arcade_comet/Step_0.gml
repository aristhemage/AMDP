x += dir * h_spd;

if(y > arcade_x2.y){instance_destroy()}
if(x > arcade_x2.x -32 && dir == 1){instance_destroy()}
if(x < arcade_x1.x + 32 && dir == -1){instance_destroy()}

if(place_meeting(x,y,obj_arcade_laser)){
	obj_arcade_rocket.xp += 10;	
	// Add breaking animation later
	instance_destroy();
}