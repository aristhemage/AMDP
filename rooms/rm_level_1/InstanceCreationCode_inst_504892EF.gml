function cutscene(){
	with(obj_cutscene_master){
		var actions = [
			action_set_tet(EYELIDS.HAPPY,c_green),
			action_create_object(obj_text_bubble,obj_tet.x + obj_tet.sprite_width/2,obj_tet.y- obj_tet.sprite_height,{follow: obj_tet,txtSpd: 1 , isNext: false, bubble_timer: room_speed*2, txt: [multiline_string("Nice! A few more jumps to go.")]}),
		];
		
		start_cutscene(actions)
	}	
}