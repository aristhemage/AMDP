draw_set_font(fnt_text_bubble)
draw_set_halign(fa_left);
draw_set_valign(fa_top);


  switch (room) {

        // base levels
        case rm_level_1:
        case rm_level_2:
        case rm_level_3:
        case rm_level_4:
        case rm_level_5:
			draw_set_colour(c_black);
        break;

        // core levels
        case rm_level_core_1:
        case rm_level_core_2:
        case rm_level_core_3:
        case rm_level_core_4:
			draw_set_colour(c_white);
        break;
  }
draw_text_transformed(10,10,"Deaths: " + string(obj_master.death_count),0.5,0.5,0)