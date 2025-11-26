
// Update key inputs
if(state != STATES.CUTSCENE){
	var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

	if(can_jump)
		var key_jump = keyboard_check_pressed(vk_space);
	else
		key_jump = 0;
		
	if(can_jetpack)
		key_jetpack = keyboard_check(vk_up) || keyboard_check(ord("W")); // Not a var due to use outside of scope
	else
		key_jetpack = 0;
	var key_sprint = keyboard_check(vk_shift);
	
	if(can_dash && dashing_unlocked){
		var key_dash = keyboard_check(vk_control);	
	}else{
		var key_dash = 0;
	}
}else{
	var key_left = 0;
	var key_right = 0;
	var key_jump = 0;
	var key_sprint = 0;
	var key_dash = 0;
	key_jetpack = 0;
}
// Apply h_spd and modifyers
var target_speed = move_speed;
//On a speed block = * 3, sprinting = * 1.5, on a "pull" box = *0.5
var speed_mult = (place_meeting(x, y + 1 *sign(grav), obj_speed_block) ? 3 : 1) * (key_sprint ? sprint_multiplier : 1) * (place_meeting(x,y,obj_pull_box) ? 0.05:1);
target_speed *= speed_mult;

var lerp_factor = 0.05;

if (abs(h_spd - target_speed) < 0.05) {
    h_spd = target_speed;
} else {
    h_spd = lerp(h_spd, target_speed, lerp_factor);
}



moving = false
// Horizontal movement
if (key_right && !place_meeting(x + h_spd, y, p_wall)) {
    x += h_spd;	
	moving = true;
} 
if (key_left && !place_meeting(x - h_spd, y, p_wall)) {
    x -= h_spd;
	moving = true;
}

// Check if on the ground
var on_ground = place_meeting(x, y + 1 * sign(grav), p_wall) || place_meeting(x,y+1 * sign(grav), obj_pull_box);

// Check for platforms
var platform = instance_place(x, y + 1 * sign(grav) + v_spd, p_platform);
if(platform != noone){
	if(platform.bbox_top > obj_player.bbox_bottom){	
		on_ground = true;	
		v_spd = 0;
	}
}

// Coyote time
if (on_ground) {
    coyote_timer = coyote_time_max;
	jetpack_fuel= jetpack_fuel_max;
	jetpack_power = 1;
} else if (coyote_timer > 0) {
    coyote_timer--;
}

// Jump buffering
if (key_jump) {
    jump_buffer_timer = jump_buffer_max;
} else if (jump_buffer_timer > 0) {
    jump_buffer_timer--;
}

// Apply gravity
if (!on_ground) {
	v_spd = min(v_spd + grav, max_fall_speed);
	if(sign(grav) == -1){
		if(abs(v_spd) > max_fall_speed){
			v_spd = -max_fall_speed	
		}
	}
}else{
	if(squish){
		y_scale_vis = 0.75;
		squish = false;
		repeat(8){
			instance_create_depth(x-48,y-3,1,obj_foot_particles,{v_vel : irandom_range(-4,4), col: c_gray})		
			instance_create_depth(x+48,y-3,1,obj_foot_particles,{v_vel : irandom_range(-4,4), col: c_gray})		
		}
	}
}


// Handle jumping
if (jump_buffer_timer > 0 && (on_ground || coyote_timer > 0)) {
	jump_power = jump_power_int * (place_meeting(x, y + 1 * sign(grav), obj_jump_block) ? 2 : 1)
    v_spd = jump_power * sign(grav);
    jump_buffer_timer = 0; 
    coyote_timer = 0;      
	x_scale_vis = 0.75;
	squish = true;
	repeat(4){
		instance_create_depth(x,y-3,1,obj_foot_particles,{v_vel : -v_spd + irandom_range(-4,4), col: c_gray})		
	}
}

// Jetpack stuff
if(on_ground){
	key_jetpack = 0;	
}

if(key_jetpack && jetpack_fuel > 0){
	//Correct the 1 jetpack power if v_spd is already negative
	if(sign(v_spd) = -1 && jetpack_power > 0){ jetpack_power = 0;}
	v_spd = jetpack_power * sign(grav);
	
	if(jetpack_power > jetpack_power_max){jetpack_power -= 0.05;}
	jetpack_fuel--;
}


// Vertical collision
if (!place_meeting(x, y + v_spd, p_wall) && !place_meeting(x, y + v_spd, obj_pull_box) ) {
    y += v_spd;
} else {
	//Get to the ground ground.
    while (!place_meeting(x, y + sign(v_spd), p_wall) && !place_meeting(x, y + sign(v_spd), obj_pull_box)) {
        y += sign(v_spd);
    }
    v_spd = 0;
}

// Sliding on walls
var sliding_on_wall = false;
if (key_right && place_meeting(x + h_spd + move_speed, y, p_wall) && sign(v_spd) == 1 * sign(grav)) {
    grav = 0.075 * sign(grav);	
	sliding_on_wall = true;
	// Create particles below
}else{
	if (key_left && place_meeting(x - h_spd - move_speed, y, p_wall) && sign(v_spd) == 1 * sign(grav))  {
	    grav = 0.075 * sign(grav);	
		sliding_on_wall = true;
	}else{
			grav = 0.4 * sign(grav);
			sliding_on_wall = false;	
	}
}	


// Dash 
if(key_dash && !on_ground && !dashing){
	// If moving, check if right key is pressed,
	//if so, direction is right, if not, its left
	dash_dir = moving ? (key_right == 1 ? 1 : -1) : 0; 
	dashing = true;
} 

if(dashing){
	// Make sure player never hits a wall
	if(dash_distance < 12){
		dashing = true;
		if(!place_meeting(x + 1 * dash_dir,y, p_wall)){
			x += 8 * (dash_dir)
			v_spd = 0;
		}else{
			dash_distance+= 12	
		}
		dash_distance++;
	}else{
		dashing = false;
		can_dash = false;
		dash_dir = 0;

	}
}

if(on_ground){
	can_dash = true;	
	dashing = false;
	dash_distance = 0;
}


// Gravity block
var grav_block = instance_place(x,y+v_spd,obj_gravity_wall);

if(grav_block != noone){
	if(grav_block.touched != true){
		grav = -grav;
		grav_flip_anim = true; // Unused for now
		grav_block.touched = true;
	}
	
}

// Breaks Collision :/
//if(grav_flip_anim){
//	image_angle += 15;
//	if(image_angle > 180){
//		image_angle = 0;
//		grav_flip_anim = false;
//	}
//}

///Deaths
var bad = instance_place(x,y,p_bad);
if(bad != noone && !debug_invince){
	if(!bad.ignore_collsion){
		instance_create_depth(x,y,1,obj_dead_player);
		x_scale_vis = 0;
		y_scale_vis = 0;
		grav = 0.4;
		x = respawn_x;
		y = respawn_y;
		h_spd = 0;
		v_spd = 0;
		dashing = false;
		can_dash = true;
		dash_dir = 0;
		with(obj_box){
			x = int_x;
			y = int_y;
			image_alpha = 0;
			in = false
			grav = 0.4
			v_spd = 0;
			h_spd = 0;
		}
	}
	
}

// Particles
	if(on_ground && moving){
		foot_particle_timer--;
		if(foot_particle_timer <= 0){
			//var ground_color = draw_getpixel(x, y + sprite_height / 2 + 1);
			instance_create_depth(x,y-3,1,obj_foot_particles,{v_vel : -v_spd, col: c_gray})	
			foot_particle_timer = 3;
		}
	}
	if(sliding_on_wall){
		foot_particle_timer--;
		if(foot_particle_timer <= 0){
			instance_create_depth(x + (key_right ? 40: -40),y-16,1,obj_foot_particles,{v_vel : -v_spd, col: c_gray})	
			foot_particle_timer = 3;
		}	
	}

// If ever stuck within a wall
var wall = instance_place(x,y,p_wall);
if(wall != noone){
	if (x > wall.x){
		x++;	
	}else{
		x--;	
	}
}
//Debug
if keyboard_check(ord("R")){room_restart()}
if keyboard_check(ord("L")){room_goto(rm_level_select)}


