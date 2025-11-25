#macro c_pink #FFC0CB

v_spd = 0;
h_spd = 0;

move_speed = 4;
sprint_multiplier = 1.5;
jump_power = -8;
jump_power_int = jump_power;
grav = 0.4;
grav_flip_anim = false;
max_fall_speed = 12;


// Coyote time and jump buffer 
coyote_time_max = 10; 
jump_buffer_max = 10; 
coyote_timer = 0;
jump_buffer_timer = 0;


state = STATES.IDLE;

respawn_x = x;
respawn_y = y;

x_scale_vis = 1;
y_scale_vis = 1;
squish = false;

can_jump = true;

can_jetpack = true;
key_jetpack = 0;
jetpack_fuel = 80;
jetpack_power = 0;
jetpack_power_max = -4;
jetpack_fuel_max = jetpack_fuel;

pressure_plates = array_create(PRESSURE_PLATES.ARRAY_LEN,0) //For Pressure Plates

foot_particle_timer = 3;

can_dash = true;
dash_distance = 0;

debug_invince = false;
depth = -100

