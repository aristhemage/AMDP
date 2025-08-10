function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
		    action_set_tet(EYELIDS.SKEPTICAL,c_blue,STATES.IDLE),
			action_wait_time(0.5),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y-obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Hmm..."),multiline_string("Looks like you can't actually jump that high."),multiline_string("Hmm.......................")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),
		    action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: false, txt: [multiline_string("Oh! I know! Wait here!")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.CUTSCENE),
			action_move_tet(5400,800,15), 
			//Add Workshop sounds here
 
			action_wait_time(2),
			//Tet throws the jetpack
			action_move_tet(4600,1000,15),  
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),

 
		    action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("Take this!")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			action_create_object(obj_jetpack_throw,4600,1000),
			
			action_wait_time(1), 
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),	
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("If you hold UP while you jump, you can use that handy jetpack to jump higher!")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL,c_red,STATES.IDLE),
			action_create_object(obj_text_bubble, obj_tet.x + obj_tet.sprite_width/2, obj_tet.y - obj_tet.sprite_height, {follow: obj_tet, txtSpd: 0, bubble_timer: 10,isNext: false, txt: [multiline_string("By using this jetpack, the user acknowledges the following:\nThe user accepts that atmospheric re-entry may occur, with risks including injury, discomfort, or death, and waives any claims against OmniArc Systems. The jetpack may cause temporary bodily alteration, including the potential for squishy bones. The user understands that the jetpack may initiate involuntary orbital flight, for which OmniArc Systems assumes no responsibility. In the event of catastrophic failure, the user's last moments may be recorded for quality assurance and to be added to the funny clips section. Complaints can be submitted via sticky note and will most likley not be read. The jetpack may develop self-awareness, and users are expected to be polite. The user acknowledges that death, enlightenment, or both are possible outcomes. Lastly, the user accepts that unexpected altitude gains are part of the design.")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.IDLE),	
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: true, txt: [multiline_string("*Exchem*"), multiline_string("Why don't you try it out!")]}),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY,c_green,STATES.FOLLOW_PLAYER),
			action_set_var(obj_player,"can_jetpack",true),
			action_set_var(obj_player,"state",STATES.IDLE),

			
			
			
			
		];
		
		start_cutscene(actions)
	}	
}