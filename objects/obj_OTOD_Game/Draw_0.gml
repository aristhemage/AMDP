if(paused){
if (!surface_exists(paused_surf)){
    if (paused_surf == -1){
        instance_deactivate_all(true);
		if(!instance_exists(oPausedMenu)){
			instance_create_depth(room_width/2,room_height/2,-9999,oPausedMenu);
			instance_activate_object(oMouse);
			instance_activate_object(oMouseVisual);
			instance_activate_object(oSaveNLoad);
			instance_activate_object(oClipboard);
			instance_activate_object(oUpgradeStation);
			instance_activate_object(oStartButton);
		}
	}
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
}else{
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);

}
}







