function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
		    action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_wait_time(0.5),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y-obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Now!"),multiline_string("Let me introduce you to my new invention!"),multiline_string("I call it the Sudden Puncture Yodeling Kreature, or SPYK for short!"), multiline_string("They are a bit shy, but i've heard them sing.")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_yellow,STATES.IDLE),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y-obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("...They aren't very good at it.")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y-obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Anyway! They are also you're mortal enemy!")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_move_tet(3700,1000,15), 
			action_create_tet_bubble(["Now! Let me tell you something about your new mortal enemy.", "Touch them and you die!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_create_tet_bubble(["You can't touch them here..."] ),
			action_create_object(obj_sign_level1, 3620,800,{dir : DIRECTIONS.DOWN} ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.NONE,c_yellow,STATES.IDLE),
			action_create_tet_bubble(["Not here"] ),
			action_create_object(obj_sign_level1, 3200,1100,{dir : DIRECTIONS.RIGHT} ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.MAD,c_red,STATES.IDLE),
			action_create_tet_bubble(["Absolutley not here"] ),
			action_create_object(obj_sign_level1, 3800,1100,{dir : DIRECTIONS.LEFT} ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_blue,STATES.IDLE),
			action_create_tet_bubble(["Now here...", "I'm not actually sure..."] ),
			action_create_object(obj_sign_level1, 3620,1300,{dir : DIRECTIONS.UP} ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
			action_create_tet_bubble(["Let's figure it out together, yes?", "Anyway, I'll let you to it."] ),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"state",STATES.IDLE),
			
			
			
			
			
		];
		
		start_cutscene(actions)
	}	
}