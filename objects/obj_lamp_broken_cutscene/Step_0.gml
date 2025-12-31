spawn_timer--;


if(spawn_timer < 30 && !spawn_warning){
	instance_create_depth(x,y,100,obj_spark_warning,{image_angle: 45});
	instance_create_depth(x,y,100,obj_spark_warning,{image_angle: 0});
	instance_create_depth(x,y,100,obj_spark_warning,{image_angle: -45});
	spawn_warning = true;	
}
if(spawn_timer <= 0){
	spawn_timer = irandom_range(120,300);
	instance_create_depth(x,y,100,obj_spark);
	spawn_warning = false;
}