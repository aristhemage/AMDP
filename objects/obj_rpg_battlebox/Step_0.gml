
if(obj_master.rpg_turn == TURN.PLAYER){
	target_xscale = 5;
	target_yscale = 1;
	obj_rpg_battlebox.image_xscale = lerp(obj_rpg_battlebox.image_xscale, target_xscale, 0.05);
	obj_rpg_battlebox.image_yscale = lerp(obj_rpg_battlebox.image_yscale, target_yscale, 0.05);

	if(show_txt != flavour_text){
		if(txt_timer <= 0){
			show_txt += string_char_at(flavour_text,txt_pos);
			txt_pos++;
			txt_timer = 2;
		}
		txt_timer--;
	}
}else{
	show_txt = ""
	txt_pos = 1;
}

