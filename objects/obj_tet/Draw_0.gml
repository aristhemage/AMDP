
draw_self();
draw_sprite_ext(sTetLight,0,x,y,1,1,image_angle,light_col,image_alpha);

if(!flipped){
draw_sprite_ext(sTetEye,0,x,y,1,1,image_angle,c_white,1);
}

if(eyelid_no != EYELIDS.NONE && !flipped){
	draw_sprite_ext(sTetEylid,eyelid_no-1,x,y,1,1,image_angle,c_white,1);	
}
