view_width = 1920/1.2;
view_height = 1080/1.2;

window_scale = 1;
_spd = 0.09;

instance_create_depth(x,y,1,obj_player_camera);
_x = obj_player_camera.x;
_y = obj_player_camera.y;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);
//window_set_fullscreen(true);


