// Why + 12 on the wall detection? Screw you thats why! (I have no clue)
if(place_meeting(x-obj_player.h_spd,y,obj_player) && obj_player.h_spd > 0 && !place_meeting(x - obj_player.h_spd + 12, y, p_wall)){
	x += obj_player.h_spd	
}

if(place_meeting(x+obj_player.h_spd,y,obj_player) && obj_player.h_spd > 0 && !place_meeting(x + obj_player.h_spd - 12, y, p_wall)){
	x += -obj_player.h_spd	
}


if (!place_meeting(x, y + v_spd , p_wall)) {
    y += v_spd;
} else {
    while (!place_meeting(x, y + sign(v_spd) , p_wall)) {
        y += sign(v_spd);
    }
    v_spd = 0;
}


	v_spd = min(v_spd + grav, max_fall_speed);
	if(sign(grav) == -1){
		if(abs(v_spd) > max_fall_speed){
			v_spd = -max_fall_speed	
		}else{
			
		}
	}

// Destroy
if(place_meeting(x,y,p_bad) && !place_meeting(x,y, obj_bullet) && !fade){
	fade = true;
	instance_create_depth(int_x,int_y,1,obj_box_spawner,{int_x: int_x, int_y: int_y})
	
}

// Fade in
if(!in){
	if(image_alpha < 1){
		image_alpha += 0.1;	
	}else{
		image_alpha = 1;
		in = true;
	}
}

//Fade out
if(fade){
	if(image_alpha > 0){
		image_alpha += -0.1;	
	}else{
		instance_destroy();
		
	}
}



//Prevent being stuck in each other
if(place_meeting(x,y,obj_box)){
	instance_destroy();
	instance_create_depth(int_x,int_y,1,obj_box_spawner,{int_x: int_x, int_y: int_y})
}

// Gravity block
var grav_block = instance_place(x,y+v_spd,obj_gravity_wall);

if(grav_block != noone){
	if(grav_block.touched_box != true){
		grav = -grav;
		grav_flip_anim = true;
		grav_block.touched_box = true;
		y -= 10
		
	}
	
}

//show_debug_message("g: " + string(grav) + "v: " + string(v_spd))

// Sometimes doesnt want to die
if (image_alpha == 0){
	instance_destroy();	
}