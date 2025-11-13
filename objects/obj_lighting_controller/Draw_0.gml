// Ensure surface exists & sized to view
if (!surface_exists(surf_light)) {
    var _w = camera_get_view_width(view_camera[0]);
    var _h = camera_get_view_height(view_camera[0]);
    surf_light = surface_create(_w, _h);
}

// Draw darkness on the surface
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);

surface_set_target(surf_light);
draw_set_colour(c_black);
draw_set_alpha(0.985);       
draw_rectangle(0, 0, _w, _h, false);

// Switch to subtract blend mode for light holes
gpu_set_blendmode(bm_subtract);

// Draw each light source 
with (obj_player) {
    draw_sprite_ext(spr_light, 0,
        x - _cx, y - _cy-32,
        3.0, 3.0, 0, c_white, 1);
}

with (obj_lamp) {
    draw_sprite_ext(spr_light_cone, 0,
        x - _cx, y - _cy+200,
        4.0, 7.0, 0, c_white, 1);
}

with (obj_tet) {
    draw_sprite_ext(spr_light, 0,
        x - _cx, y - _cy,
        5.0, 5.0, 0, c_white, 1);
}


// 5. Restore blend mode
gpu_set_blendmode(bm_normal);

// 6. Reset target and draw the surface to screen
surface_reset_target();
draw_surface(surf_light, _cx, _cy);
draw_set_alpha(1);
