draw_set_color(c_black);

var center_x = display_get_gui_width() / 2;
var center_y = display_get_gui_height() / 2;

var previous_x = center_x;
var previous_y = center_y;

var spiral_length = spiral_size;

for (var spiral_step = 0; spiral_step < spiral_length; spiral_step += 2){
    // Thanks google
    var spiral_radius = spiral_step * 0.5;
    var spiral_direction = spiral_step + spiral_angle;

    var draw_x = center_x + lengthdir_x(spiral_radius, spiral_direction);
    var draw_y = center_y + lengthdir_y(spiral_radius, spiral_direction);

    draw_line_width(previous_x, previous_y, draw_x, draw_y, 24);

    previous_x = draw_x;
    previous_y = draw_y;
}