if (paused){
    draw_set_color(c_black);
    draw_set_alpha(0.75);
    layer_set_visible(layer_get_id("Tileset"), false);
    draw_rectangle(0, 0, room_width, room_height, false);

    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text(100, 100, "PAUSED");

    // Draw the slider on top of the rectangle
    with(obj_sound_slider){
        draw_self();  
    }

}else{
    layer_set_visible(layer_get_id("Tileset"), true);
}
