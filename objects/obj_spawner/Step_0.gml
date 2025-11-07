difficulty_timer--;
if(difficulty_timer <= 0){
	difficulty_timer = 600;
	difficulty++;
}

monster_timer--;
if(monster_timer <= 0 ){
	monster_timer = 600-difficulty;
	var spawnNum = max(2,round(difficulty/5));
	var _margin = 100
	
	repeat(spawnNum){
		var spawn_coords = random_point_on_boundary(VIEW_X - _margin, VIEW_Y - _margin, VIEW_R + _margin, VIEW_B + _margin);
		if(difficulty > 10){
			var choice = choose(obj_DC_slime,obj_DC_mushroom,obj_DC_spider,obj_DC_snake);
		}else{
			var choice = choose(obj_DC_slime,obj_DC_mushroom,obj_DC_spider);
		}
		instance_create_depth(spawn_coords.x,spawn_coords.y,1,choice)
	}
}

//show_debug_message(difficulty)