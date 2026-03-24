function cutscene(){
	with(obj_cutscene_master){
		var actions = [
				action_set_var(obj_player_rpg,"state",STATES.CUTSCENE),
				action_create_rpg_text(["Oh Yay! It seems to have worked.", "I always wanted to make an RPG."],1,spr_tet_rpg_portrait),
				action_wait_for_var(obj_rpg_textbox,"finished",true),
				action_create_rpg_text(["OmniArc never let me"],1,spr_tet_rpg_portrait,EYELIDS.MAD,c_red),
				action_wait_for_var(obj_rpg_textbox,"finished",true),
				action_create_rpg_text(["I Guess that doesnt matter now"],1,spr_tet_rpg_portrait,EYELIDS.SKEPTICAL,c_yellow),
				action_wait_for_var(obj_rpg_textbox,"finished",true),
				action_create_rpg_text(["Anyway, like I was saying, the game isnt over...", "...In fact it just begun! 100 years of more gameplay!", "Look I even made a little enemy for you to fight!"],1,spr_tet_rpg_portrait,,,true),
				action_wait_for_object_destroy(obj_rpg_textbox),
				action_set_var(obj_player_rpg,"state",STATES.IDLE),
			]
			
		start_cutscene(actions)
	}
}