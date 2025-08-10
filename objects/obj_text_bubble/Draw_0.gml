draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(draw){
	draw_sprite_ext(spr_text_bubble,0,follow.x + follow.sprite_width/2,follow.y - sprite_height,image_xscale,image_yscale,image_angle,c_white,1);
	draw_set_color(c_black);
	draw_set_font(fnt_text_bubble)
	draw_text_transformed(follow.x + follow.sprite_width/2,follow.y - sprite_height-lines*4,showTxt,0.33,0.33,image_angle);
}
	
draw_set_alpha(1)



if(showTxt == txt[txtNo]){
	//draw_sprite_ext(sEnterKey,enterState,x + (string_width(txt[txtNo]) + 30)/1.2, y +  (string_height(txt[txtNo]) + 2 * vertical_margin)/2,1,1,image_angle,c_white,1)	
}



