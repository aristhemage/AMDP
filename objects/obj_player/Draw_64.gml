draw_set_font(fnt_text_bubble)
draw_set_halign(fa_left);
draw_text_transformed(10,10,"Deaths: " + string(obj_global_flags.death_count),0.5,0.5,0)