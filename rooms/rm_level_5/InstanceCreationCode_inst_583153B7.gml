function cutscene(){
	with(obj_cutscene_master){
		var actions = [	
			action_set_tet(EYELIDS.HAPPY, c_green,STATES.FOLLOW_PLAYER),
			action_create_tet_bubble(["You Got this! Hopefully I'm not currently distracting you with my obscenely large dialouge box! Anyway you're doing great! Keep flying and not-dying and, you know, prooving that I don't need to be scrapped after all. Your success is literally the only proof I have that I'm worth while, So... no prressure! But also... Don't fail, I'll look bad, You'll look bad, it's a loose-loose. Okay that's all!"],1,false,100),
			action_wait_for_object_destroy(obj_text_bubble),
			]
		start_cutscene(actions)
	}
}