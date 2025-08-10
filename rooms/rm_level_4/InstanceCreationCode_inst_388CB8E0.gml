function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_var(obj_player,"state",STATES.CUTSCENE),
			action_wait_time(1),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Now this level I'm exited to show off, worked hard on all the cool features.", "Ahead of you lies a speed boost pannel. Very handy if I do say so... and I do! Because I'm me!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.SKEPTICAL, c_blue,STATES.IDLE),
			action_create_tet_bubble(["Am I using that expression right?"]),
			action_wait_for_object_destroy(obj_text_bubble),
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Anyway, personally I use them to move around the levels when I get tired of flying.","Observe!"]),
			action_wait_for_object_destroy(obj_text_bubble),
			//Tet flies down on the speed block, gets launched and flies back
			
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.IDLE),
			action_create_tet_bubble(["Whew! Always fun.","You try!"],1,false),
			action_wait_for_object_destroy(obj_text_bubble),
			

			action_set_var(obj_player,"state",STATES.IDLE),
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			]
			
		start_cutscene(actions)
	}
}