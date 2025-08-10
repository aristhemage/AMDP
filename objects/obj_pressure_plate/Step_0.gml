
if (image_yscale == 1 && place_meeting(x, y - 1, p_wall)) || (image_yscale == -1 && place_meeting(x, y + 1, p_wall)) {
	switch (col) {
		case c_aqua:   obj_player.pressure_plates[PRESSURE_PLATES.BLUE]   = true; break;
		case c_lime:   obj_player.pressure_plates[PRESSURE_PLATES.GREEN]  = true; break;
		case c_yellow: obj_player.pressure_plates[PRESSURE_PLATES.YELLOW] = true; break;
		case c_pink:   obj_player.pressure_plates[PRESSURE_PLATES.PINK]   = true; break;
		case c_orange: obj_player.pressure_plates[PRESSURE_PLATES.ORANGE] = true; break;
	}
} else {
	switch (col) {
		case c_aqua:   obj_player.pressure_plates[PRESSURE_PLATES.BLUE]   = false; break;
		case c_lime:   obj_player.pressure_plates[PRESSURE_PLATES.GREEN]  = false; break;
		case c_yellow: obj_player.pressure_plates[PRESSURE_PLATES.YELLOW] = false; break;
		case c_pink:   obj_player.pressure_plates[PRESSURE_PLATES.PINK]   = false; break;
		case c_orange: obj_player.pressure_plates[PRESSURE_PLATES.ORANGE] = false; break;
	}
}
