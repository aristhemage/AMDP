draw_self()
if(obj_master.rpg_turn == TURN.PLAYER || show_win){
	draw_set_font(fnt_text_bubble)
	draw_set_colour(c_white)
	draw_text_transformed(bbox_left + text_padding, bbox_top + text_padding,show_txt,0.5,0.5,0)	
}