event_inherited()
spawn_timer--;

if(spawn_timer <= 0 && life > 30){
	spawn_timer = 30;	
	instance_create_depth(
		obj_bullet_spike_sing.x,
		obj_bullet_spike_sing.y ,
		-10,
		obj_bullet_spike_note,
		{dir_x: obj_rpg_soul.x, dir_y: obj_rpg_soul.y}
	)
}

