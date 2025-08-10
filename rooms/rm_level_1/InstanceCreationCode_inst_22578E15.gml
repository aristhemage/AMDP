function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_var(obj_player,"can_jump",true),
			
			action_set_tet(EYELIDS.NONE,c_yellow),
		    action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Whoops!"),multiline_string("I'm sorry, it's been a while and I normally just float..."),multiline_string("The jumping ability was taking up too much space in memory"),multiline_string("So I disabled it.")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD,c_green),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Anyway, I flipped it back on, just for you."),multiline_string("You... Non-Floater... You.")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_blue),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Can you float?"),multiline_string("If you can, that would break so many things.")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: false, txt: [multiline_string("Anyway, rambling aside, you should be able to cross the gap this time")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),

		];
		
		start_cutscene(actions)
	}	
}