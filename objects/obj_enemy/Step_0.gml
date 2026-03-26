if(keyboard_check_released(vk_alt)){
	obj_master.reposition_rpg_player = true;
	array_push(obj_master.kill_flag,obj_master.enemy_id)
	room_goto(obj_master.rpg_room);	
}

