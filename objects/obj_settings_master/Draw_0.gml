if (paused){
    draw_set_color(c_black);
    draw_set_alpha(0.75);
    layer_set_visible(layer_get_id("Tileset"), false);
    draw_rectangle(0, 0, room_width, room_height, false);

    draw_set_color(c_white);
    draw_set_alpha(1);
	draw_set_halign(fa_center)
    draw_text(_cam_middle_x, _cam_middle_y-300, "PAUSED");
	draw_sprite_ext(spr_sound_bar,0,_cam_middle_x,_cam_middle_y,5,1,0,c_white,1);

}else{
    layer_set_visible(layer_get_id("Tileset"), true);
}
