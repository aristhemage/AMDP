if(hp <= 0){
	obj_master.reposition_rpg_player = true;
	array_push(obj_master.kill_flag,obj_master.enemy_id)
	room_goto(obj_master.rpg_room);	
}

if(hp < draw_hp){
	draw_hp -= 0.1;
	draw_hp_timer = 30;
}

// Draw the Hp bar a little longer after draw_hp = hp.
if(draw_hp_timer > 0){
	draw_hp_timer--;	
}