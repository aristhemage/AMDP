if(!leveled_up){
	// Vars
	k_left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
	k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	k_up    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
	k_down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
	k_shoot = keyboard_check(vk_space) || keyboard_check(ord("Z")) || keyboard_check(vk_shift);

	// Movement
	if (k_left && x + h_spd > arcade_x1.x) {
	    h_spd -= 0.5;
	}
	else if (k_right && x + h_spd < arcade_x2.x) {
	    h_spd += 0.5;
	}
	else if (!k_left && !k_right) {
	  if(abs(h_spd) > 0.5){
		h_spd += -0.15 * sign(h_spd);
	  }else{
			h_spd = 0  
	  }
	}

	if (k_up && y + v_spd > arcade_x1.y) {
	    v_spd -= 0.5;
	}
	else if (k_down && y + v_spd < arcade_x2.y) {
	    v_spd += 0.5;
	}
	else if (!k_up && !k_down) {
	  if(abs(v_spd) > 0.5){
		v_spd += -0.15 * sign(v_spd);
	  }else{
			v_spd = 0  
	  }
	}

	// Clamp speeds
	if (abs(h_spd) > max_spd) h_spd = max_spd * sign(h_spd);
	if (abs(v_spd) > max_spd) v_spd = max_spd * sign(v_spd);

	// Apply movement
	x += h_spd;
	y += v_spd;

	// FINAL clamp to keep player inside box
	if (x < arcade_x1.x) { x = arcade_x1.x; h_spd = 0; }
	if (x > arcade_x2.x) { x = arcade_x2.x; h_spd = 0; }
	if (y < arcade_x1.y) { y = arcade_x1.y; v_spd = 0; }
	if (y > arcade_x2.y) { y = arcade_x2.y; v_spd = 0; }

	// Shooting
	if(k_shoot){
		if(shoot_cooldown <= 0){
			instance_create_depth(x,y+sprite_get_height(spr_arcade_ship)/2,1,obj_arcade_laser,{spd:laser_spd})	
			shoot_cooldown = shoot_cooldown_int;
		}
	}
	if(shoot_cooldown > 0){
		shoot_cooldown--;	
	}

	// Ramp difficulty
	asteroid_spawner_ramp_timer--;
	if (asteroid_spawner_ramp_timer <= 0) {
	    asteroid_spawner_ramp_timer = asteroid_spawner_ramp_timer_int;
	    asteroid_level++;
	}

	// Spawn the rocks
	asteroid_spawner_timer--;
	if (asteroid_spawner_timer <= 0) {
	
	    var spawn_count = max(1, round(asteroid_level / 5));
	    repeat (spawn_count) {
	        var spawn_x = irandom_range(arcade_x1.x + 32, arcade_x2.x - 32);
	        var spawn_y = arcade_x1.y; 
	        instance_create_depth(spawn_x, spawn_y, 1, obj_arcade_asteroid);
	    }
    
	    // Clamp spawn rate
	    asteroid_spawner_timer = max(15, asteroid_spawner_ramp_timer_int - asteroid_level * 5);
	}


	comet_spawner_timer--;
	if (comet_spawner_timer <= 0) {
	    var spawn_count = max(1, round(asteroid_level / 5)); 
    
	    repeat (spawn_count) {
	        var spawn_x = arcade_x1.x;
	        var spawn_y = irandom_range(arcade_x1.y + 32, arcade_x2.y -32);
			repeat(4)
				instance_create_depth(spawn_x, spawn_y, 1, obj_arcade_comet_spawner);
	    }
    
	    comet_spawner_timer = max(30, asteroid_spawner_ramp_timer_int - asteroid_level * 5);
	}


	// Leveling

	if(xp >= max_xp){
		level++;
		xp -= max_xp
		max_xp *= 1.5
		leveled_up = true;
	}
}else{
	if(!instance_exists(obj_arcade_level_up)){
		instance_create_depth(arcade_level1.x,arcade_level1.y,-10,obj_arcade_level_up,{level_info: ARCADE_LEVELS.SHOOT_SPD})		
		instance_create_depth(arcade_level2.x,arcade_level2.y,-10,obj_arcade_level_up,{level_info: ARCADE_LEVELS.SHOOT_SIZE})	
		instance_create_depth(arcade_level3.x,arcade_level3.y,-10,obj_arcade_level_up,{level_info: ARCADE_LEVELS.MAX_HEALTH})	
		instance_create_depth(arcade_level4.x,arcade_level4.y,-10,obj_arcade_level_up,{level_info: ARCADE_LEVELS.HP_BOX_SPAWNRATE})	

			
	}
}
//Debug
if keyboard_check(ord("R")){room_restart()}
