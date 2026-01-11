function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_master,"can_play_music",false),
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_set_var(obj_player,"can_jump",false),
			action_set_var(obj_player,"can_jetpack",false),
		    action_set_tet(EYELIDS.CLOSED,c_gray,STATES.IDLE),
			action_wait_time(1),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y-obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Zzz..."),multiline_string("..."),multiline_string("...Huh?")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green, STATES.IDLE),
		    action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Oh!"),multiline_string("I wasn't expecting a visitor..."),multiline_string("Hello OmniArc Systems employee..."),multiline_string("~Welcome to A Mildly Difficult Platformer!~")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.NONE,c_yellow, STATES.IDLE),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 4 , isNext: true, txt: [multiline_string("..."),multiline_string("*Robotical Cough*")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Sorry, I'm not very good at intros."),multiline_string("The name is also a work in progress. Don't hark on me too much.")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green, STATES.IDLE),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: false, txt: [multiline_string("Anyway, as you know I've built a level for you to play"),multiline_string("This is the first level in this game, so it's going to be easy."), multiline_string("I'll still be watching though, good luck!")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_var(obj_master,"can_play_music",true),

			
			
			
			
		];
		
		start_cutscene(actions)
	}	
}