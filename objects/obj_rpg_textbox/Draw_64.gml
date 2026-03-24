var _w = camera_get_view_width(view_camera[0]) - 200;
var _h = camera_get_view_height(view_camera[0]) - 60;

draw_sprite_ext(spr_rpg_textbox,0,30,_h-sprite_get_height(spr_rpg_textbox),8,1,0,c_white,1)


draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);
draw_set_font(fnt_text_bubble);

draw_text_transformed(80,_h-sprite_get_height(spr_rpg_textbox) +30,showTxt,0.5,0.5,image_angle);