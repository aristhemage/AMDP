		for(var i = 0; i < 3; i++){
			if(irandom(1) == 0){
				instance_create_depth(x,y,1,obj_box_particles,{num : i})
			}
		}