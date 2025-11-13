
//with(obj_wall_basic){
//	var tile_sz = 32;
//	// Top left
//	draw_sprite_part(spr_terraign,0,6*tile_sz,0,tile_sz,tile_sz,bbox_left,bbox_top)
//	// Bottom left
//	draw_sprite_part(spr_terraign,0,0,2*tile_sz,tile_sz,tile_sz,bbox_left,bbox_bottom-tile_sz)
//	// Bottom Right
//	 draw_sprite_part(spr_terraign, 0, 2*tile_sz, 2*tile_sz, tile_sz, tile_sz, bbox_right - tile_sz, bbox_bottom - tile_sz);
//	// Top Right 
//	draw_sprite_part(spr_terraign, 0, 2*tile_sz, 0, tile_sz, tile_sz, bbox_right - tile_sz, bbox_top);
	
//	// Top middle
//	var tiles_w = ceil(sprite_width/tile_sz);
//	for	(i = 1; i < tiles_w-1; i++){
//		draw_sprite_part(spr_terraign, 0, 1*tile_sz, 0, tile_sz, tile_sz, bbox_left + i*tile_sz, bbox_top);
//	}
	
//	// Bottom middle
//	for	(i = 1; i < tiles_w-1; i++){
//		draw_sprite_part(spr_terraign, 0, 1*tile_sz, 2*tile_sz, tile_sz, tile_sz, bbox_left + i*tile_sz, bbox_bottom-tile_sz);
//	}
	
//	// Left side
//	var tiles_h = ceil(sprite_height/tile_sz);
//	for	(i = 1; i < tiles_h-1; i++){
//		draw_sprite_part(spr_terraign, 0, 0, 1*tile_sz, tile_sz, tile_sz, bbox_left , bbox_top + i*tile_sz);
//	}
	
//	// Right side
//	for	(i = 1; i < tiles_h-1; i++){
//		draw_sprite_part(spr_terraign, 0, 2*tile_sz, 1*tile_sz, tile_sz, tile_sz, bbox_right-tile_sz , bbox_top + i*tile_sz);
//	}
	
//}	

