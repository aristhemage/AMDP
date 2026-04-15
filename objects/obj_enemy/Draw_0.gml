draw_self()
if(draw_hp > hp || draw_hp_timer > 0)
	draw_healthbar(x-20,y-80,x+20,y-40,(draw_hp/max_hp) * 100,c_black,c_red,c_lime,0,true,true)