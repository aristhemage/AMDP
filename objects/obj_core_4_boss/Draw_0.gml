draw_sprite(spr_core_boss_base,0,x,y);
draw_sprite(spr_core_boss_eye,0,x + eye_x_offset,y + eye_y_offset);
draw_sprite(spr_core_boss_shading,0,x,y);

var eye_rad = 32
var eye_spd = 2
if(obj_player.x < x+eye_x_offset && eye_x_offset > -eye_rad){
	eye_x_offset-= eye_spd;	
}

if(obj_player.x > x+eye_x_offset && eye_x_offset < eye_rad){
	eye_x_offset+= eye_spd;	
}

if(obj_player.y < y+eye_y_offset && eye_y_offset > -eye_rad){
	eye_y_offset-= eye_spd;	
}

if(obj_player.y > y+eye_y_offset && eye_y_offset < eye_rad){
	eye_y_offset+= eye_spd;	
}