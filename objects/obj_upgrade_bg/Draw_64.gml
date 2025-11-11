draw_sprite_ext(spr_upgrade_bg,0,140,480,image_xscale,image_yscale,0,c_white,1)
draw_set_halign(fa_center)
draw_set_font(fnt_game);
draw_text_transformed(SCREEN_CENTER_X,SCREEN_CENTER_Y-280,txt,0.5,0.5,0 );
draw_text_transformed(SCREEN_CENTER_X,SCREEN_CENTER_Y,desc,0.5,0.5,0 );