draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_alpha(0.5)
draw_set_color(c_gray)

if(hover){
	draw_rectangle(x-196,y-64,x+196,y+64,false)
}

	
draw_set_alpha(1)
draw_set_colour(hover ? c_black : c_dkgray);


var amplitude = 8; //How far left and right
var frequency = 0.05; //How fast
var offset = amplitude * sin(hover_time * frequency);

if(hover){
	draw_text(x , y+ offset, txt);
}else{
	draw_text(x,y,txt);
}	

