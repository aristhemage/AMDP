if(touched){
	touch_timer--;
	if(touch_timer <= 0){
		touched = false;
		touch_timer = 30;
	}
}
if(touched_box){
	touch_box_timer--;
	if(touch_box_timer <= 0){
		touched_box = false;
		touch_box_timer = 30;
	}
}