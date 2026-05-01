event_inherited()
spawn_timer--;

var num_spikes_v = (obj_rpg_battlebox.bbox_bottom - obj_rpg_battlebox.bbox_top)/sprite_get_width(spr_bullet_spike)/2 ;
var num_spikes_h = (obj_rpg_battlebox.bbox_right - obj_rpg_battlebox.bbox_left)/sprite_get_width(spr_bullet_spike)/2 ;

if(spawn_timer <= 0 && life > 30){
	var dir = irandom(4);
	switch(dir){
	    case DIRECTIONS.DOWN:
	        skip = min(irandom(num_spikes_v-1),2);
	        for(var i = 0; i <= num_spikes_v; i++){
	            if(i != skip)
	                instance_create_depth(obj_rpg_battlebox.bbox_left + (i * 32), obj_rpg_battlebox.bbox_top - 32, 1, obj_bullet_spike_dodge, {dir: dir});
	        }
	        break;

	    case DIRECTIONS.UP:
		
	        skip = min(irandom(num_spikes_v-1),2);
	        for(var i = 0; i <= num_spikes_v; i++){
	            if(i != skip)
	                instance_create_depth(obj_rpg_battlebox.bbox_left + (i * 32), obj_rpg_battlebox.bbox_bottom + 32, 1, obj_bullet_spike_dodge, {dir: dir,image_angle: 180});
	        }
	        break;

	    case DIRECTIONS.LEFT:
			skip = min(irandom(num_spikes_h-1),2);
	        for(var i = 0; i <= num_spikes_h; i++){
	            if(i != skip)
	                instance_create_depth(obj_rpg_battlebox.bbox_right + 32, obj_rpg_battlebox.bbox_top + (i * 32), 1, obj_bullet_spike_dodge, {dir: dir, image_angle: -90});
	        }
	        break;

	    case DIRECTIONS.RIGHT:
	        skip = min(irandom(num_spikes_h-1),2);
	        for(var i = 0; i <= num_spikes_h; i++){
	            if(i != skip)
	                instance_create_depth(obj_rpg_battlebox.bbox_left - 32, obj_rpg_battlebox.bbox_top + (i * 32), 1, obj_bullet_spike_dodge, {dir: dir, image_angle: 90});
	        }
	        break;
	}
	
	
	

	
	spawn_timer = 60;
}

