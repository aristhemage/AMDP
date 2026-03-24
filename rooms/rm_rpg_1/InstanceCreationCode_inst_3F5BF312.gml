function cutscene(){
			with(obj_cutscene_master){
				var actions = [
						action_set_var(obj_player_rpg,"state",STATES.CUTSCENE),
						action_create_rpg_text(["Hey! You havent beat my little guys yet! I know that you like exploring but its not quite time yet."],1,spr_tet_rpg_portrait,,,true),
						action_wait_for_object_destroy(obj_rpg_textbox),
						action_move(obj_player_rpg,rpg_moveback1.x,rpg_moveback1.y,4),
						action_set_var(obj_player_rpg,"state",STATES.IDLE),
					]
			
				start_cutscene(actions)
			}
}