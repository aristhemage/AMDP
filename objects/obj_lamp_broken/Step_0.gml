// TODO: Add warning
spawn_timer--;
if(spawn_timer <= 0){
	spawn_timer = irandom_range(120,300);
	instance_create_depth(x,y,100,obj_spark);
}