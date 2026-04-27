if(room == rm_rpg_battle){
	// Shush about magic numbers
	draw_set_font(fnt_menu)
	draw_text_transformed(450,700,"Hp: " + string(rpg_hp) + "/10",0.25,0.25,0)
	draw_healthbar(540,680,740,740,(rpg_hp/10) * 100,c_black,c_red,c_yellow,0,true,true)
}