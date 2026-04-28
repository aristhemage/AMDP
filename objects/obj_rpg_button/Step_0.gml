if(!obj_master.pause_battle){
	selected = obj_master.button_selected;


	sprite_index = 	button == 0 ? spr_rpg_fight : spr_rpg_shield

	image_index = selected == button ? 1:0 // Button defined in room create, 0 is fight, 1 is defend


	if(keyboard_check_released(vk_enter) || keyboard_check_released(ord("Z")) && obj_master.rpg_turn == TURN.PLAYER && button == 0 && selected == 0){
		obj_enemy.hp--;
		obj_master.rpg_turn = TURN.ENEMY;
	}
	if(keyboard_check_released(vk_enter) || keyboard_check_released(ord("Z")) && obj_master.rpg_turn == TURN.PLAYER && button == 1 && selected == 1){
		obj_master.shield_health += 2;
		obj_master.rpg_turn = TURN.ENEMY;
	}
}