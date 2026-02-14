draw_set_halign(fa_center);

var _x = room_width * 0.25;
var _y = scroll_y;
var _y_offset = 0;

for (var i = 0; i < array_length(credits); i++){

	switch(credits[i][0]){
		case "Sprite":
			draw_sprite(credits[i][1],_sprite_index,_x,_y+credits[i][2] + _y_offset)
			_y_offset += credits[i][2]
		break;
		
		case "Spacer":
			_y_offset += credits[i][1]
		break;
		
		case "Text":
			draw_text_transformed(_x,_y +   _y_offset, credits[i][1],0.75,0.75,0 );
		break;
	}
}
