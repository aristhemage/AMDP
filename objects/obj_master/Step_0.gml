if(room == rm_init){
	room_goto(rm_rpg_1);	
}

if (can_play_music) {
    switch (room) {

        // base levels
        case rm_level_1:
        case rm_level_2:
        case rm_level_3:
        case rm_level_4:
        case rm_level_5:
            if (!audio_is_playing(sng_base)) {
                audio_play_sound(sng_base, 1, true, obj_settings_master.music_volume, 0);
            }else{
				audio_sound_gain(sng_base,obj_settings_master.music_volume);	
			}
        break;

        // core levels
        case rm_level_core_1:
        case rm_level_core_2:
        case rm_level_core_3:
        case rm_level_core_4:
            if (!audio_is_playing(sng_core)) {
                audio_stop_all();
                audio_play_sound(sng_core, 1, true, obj_settings_master.music_volume, 0);
            }else{
				audio_sound_gain(sng_core,obj_settings_master.music_volume);
			}
        break;
    }
}

// show_debug_message(obj_settings_master.music_volume)
// Tet room loop
if(room == rm_level_tet_room){
	tet_room_loop_timer--;
	if(tet_room_loop_timer <= 0){
		audio_stop_sound(sng_base)	
		audio_play_sound(sng_base, 1, true, obj_settings_master.music_volume*random_range(0,1), 0);
		tet_room_loop_timer = 600;
	}
}



		


if(!can_play_music){
	audio_stop_sound(sng_base);
	audio_stop_sound(sng_core);
}

// Rpg stuff
if(reposition_rpg_player && room == rpg_room){
	obj_player_rpg.x = rpg_x;	
	obj_player_rpg.y = rpg_y;	
	reposition_rpg_player = false;
}

if(room == rm_rpg_battle && start_battle ){
	rpg_turn_no = 0;
	shield_health = 0;
	instance_create_depth(room_width/2,300,1,enemy_obj);
	instance_create_depth(room_width/2,900,1,obj_rpg_battlebox);
	start_battle = false;
}

if(killed){
	death_timer--;
	if(!obj_rpg_battlebox.show_win){
		obj_rpg_battlebox.show_win = true;
		obj_rpg_battlebox.show_txt = "";
		obj_rpg_battlebox.txt_pos = 1;
	}
	if(keyboard_check_pressed(ord("Z")) || keyboard_check_released(vk_enter) || death_timer <= 0){
		reposition_rpg_player = true;
		killed = false;

		array_push(kill_flag,enemy_id)
		with(obj_cutscene_master){
			var actions = [
		        action_set_var(obj_fade,"fade",FADE.IN),
		        action_wait_for_var(obj_fade,"alpha",1),
		        action_goto_room(rm_rpg_1),
			];

			start_cutscene(actions);
		}
		death_timer = 150;
	

	}	
}

if(room == rm_rpg_battle && rpg_turn == TURN.PLAYER  && !pause_battle){
	var key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	var key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	
	if(key_right || key_left){
		button_selected = button_selected == 0 ? 1:0	
	}
	
}

// Debug

if(keyboard_check_released(vk_end) && instance_exists(obj_rpg_attack)){
	obj_rpg_attack.life = 1	
}