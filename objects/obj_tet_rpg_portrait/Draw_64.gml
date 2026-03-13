
var _w = camera_get_view_width(view_camera[0]) - 200;
var _h = camera_get_view_height(view_camera[0]) - 200;

draw_sprite(spr_tet_rpg_portraits,0,_w,_h)
draw_sprite_ext(spr_tet_rpg_light,0,_w,_h,1,1,image_angle,light_col,image_alpha);


draw_sprite_ext(spr_tet_rpg_eye,0,_w,_h,1,1,image_angle,c_white,1);


if(eyelid_no != EYELIDS.NONE){
	draw_sprite_ext(spr_tet_rpg_eylids,eyelid_no-1,_w,_h,1,1,image_angle,c_white,1);	
}

