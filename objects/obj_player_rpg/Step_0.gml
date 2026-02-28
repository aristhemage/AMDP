var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var key_sprint = keyboard_check(vk_shift);
var spd = 4 * (1 + key_sprint); 

if((key_left || key_right) && (key_up || key_down)){
	spd /= 1.5;	
}

var h_speed = (key_right-key_left) * spd;
var v_speed = (key_down-key_up) * spd;

if(!place_meeting(x + h_speed  + 1 * sign(h_speed), y, p_wall)){
	x += h_speed;	
}

if(!place_meeting(x, y + v_speed  + 1 * sign(v_speed), p_wall)){
	y += v_speed;	
}