//var input = keyboard_check(vk_down) - keyboard_check(vk_up);
//scroll_y += input * scroll_speed;

scroll_y += -scroll_speed;
if(sprite_timer <= 0){
	_sprite_index++
	sprite_timer = 5
}
sprite_timer--;