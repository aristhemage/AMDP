event_inherited()
spawn_timer--;

if(spawn_timer <= 0 && life > 30){
	spawn_timer = 30;	
	instance_create_depth(
		irandom_range(obj_rpg_battlebox.bbox_left + 30, obj_rpg_battlebox.bbox_right - 30),
		obj_rpg_battlebox.bbox_top - 64,
		-10,
		obj_bullet_spike
	)
}

