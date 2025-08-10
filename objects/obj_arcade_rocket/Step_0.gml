// Vars
k_left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
k_up    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
k_down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
k_shoot = keyboard_check(vk_space);

// Movement
// Horizontal movement
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

// Vertical movement
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

// Asteroids
if(asteroid_spawner_ramp_timer <= 0){
	asteroid_spawner_ramp_timer = asteroid_spawner_ramp_timer_int
	level++;
}else{
	asteroid_spawner_ramp_timer--;	
}

if(asteroid_spawner_timer <= 0){
	instance_create_depth(irandom_range(arcade_x1.x + 32, arcade_x2.x - 32), arcade_x1.y,1,obj_arcade_asteroid);
	asteroid_spawner_timer = asteroid_spawner_ramp_timer_int-level*5
}else{
	asteroid_spawner_timer--;	
}
//Debug
if keyboard_check(ord("R")){room_restart()}
if keyboard_check(ord("L")){room_goto(rm_level_select)}
