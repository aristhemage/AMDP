function tet_goto(ex, ey, spd) {
    with (obj_tet) {
        var dx = ex - x;
        var dy = ey - y;
        var dist = point_distance(x, y, ex, ey);

        if (dist > spd + 4 * sign(spd)) {
            // Angle tilt logic
			if(!spin){
	            if (x < ex) {
	                if (image_angle < 15) image_angle += 2;
	            } else {
	                if (image_angle > -15) image_angle -= 2;
	            }
			}

            // Move toward target
            var dir = point_direction(x, y, ex, ey);
            x += lengthdir_x(spd, dir);
            y += lengthdir_y(spd, dir);
        } else {
            // Snap to target & reset tilt
            x = ex;
            y = ey;
            image_angle = 0;
        }
    }
}
