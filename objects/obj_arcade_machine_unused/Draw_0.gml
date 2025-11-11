
if(obj_arcade_rocket.leveled_up){
	draw_set_alpha(0.5);
	draw_set_colour(c_black);
	draw_rectangle(arcade_x1.x,arcade_x1.y,arcade_x2.x,arcade_x2.y,false);
	draw_set_alpha(1);
}
draw_self();

draw_set_colour(c_red);
draw_text(draw_node_hp.x,draw_node_hp.y,"HP: " + string(obj_arcade_rocket.hp) + " / " + string(obj_arcade_rocket.max_hp))