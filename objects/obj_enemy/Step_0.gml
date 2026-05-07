if(hp <= 0){
	obj_master.killed = true;
	obj_master.rpg_turn = TURN.ENEMY
	scr_fizzle_destroy(obj_rpg_spike_enemy)
	

}
//show_debug_message(hp)

if(hp < draw_hp){
	draw_hp -= 0.1;
	draw_hp_timer = 30;
}

// Draw the Hp bar a little longer after draw_hp = hp.
if(draw_hp_timer > 0){
	draw_hp_timer--;	
}

if(obj_master.rpg_turn == TURN.ENEMY && !instance_exists(obj_rpg_attack) && hp > 0){
	var attack_choice = irandom(array_length(attack_list)-1);
	target_xscale = attack_size[attack_choice][0];
	target_yscale = attack_size[attack_choice][1];
	obj_rpg_battlebox.image_xscale = lerp(obj_rpg_battlebox.image_xscale, target_xscale, 0.1);
	obj_rpg_battlebox.image_yscale = lerp(obj_rpg_battlebox.image_yscale, target_yscale, 0.1);
	obj_master.rpg_turn_no++;
	
	// Roughly the correct size
	if(abs(obj_rpg_battlebox.image_xscale - attack_size[attack_choice][0]) < 0.2 && abs(obj_rpg_battlebox.image_yscale - attack_size[attack_choice][1]) < 0.2){
		instance_create_depth((obj_rpg_battlebox.bbox_right+obj_rpg_battlebox.bbox_left)/2,(obj_rpg_battlebox.bbox_bottom+obj_rpg_battlebox.bbox_top)/2,-99,obj_rpg_soul)
		instance_create_depth(x,y,1,attack_list[attack_choice]);
	}
}

// Hover
y += sin(current_time/200)