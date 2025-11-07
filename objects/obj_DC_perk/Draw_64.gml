var _x = 200

var spacing   = sprite_get_height(spr_upgrade_bg); // height of your upgrade bg
var total_h   = obj_DC_player.total_perks * spacing;  // total stack height
var start_y   = (1080 - total_h) / 2;       // centers vertically

var _y = start_y + (upgrade_num * spacing);

draw_sprite(spr_upgrade_icon,0,_x,_y)



txt = ""; 
desc = "";
switch (perk) {
    case PERKS.SHOOT_SPEED: 
        txt = "Shoot Speed Up!"; 
		draw_sprite(spr_upgrade_shoot_speed,0,_x,_y)
		desc = "Upgrades the rate of fire!";
    break;

    case PERKS.BUBBLE_DAMAGE: 
		txt = "Bubble Damage Up!"
        draw_sprite(spr_upgrade_damage,0,_x,_y)
		desc = "Bubbles do more damage!";
    break;

    case PERKS.BUBBLE_SIZE: 
		txt = "Bubble Size Up!"
        draw_sprite(spr_upgrade_size,0,_x,_y) 
		desc = "Bubbles are greater in size!";
    break;

    case PERKS.BUBBLE_SPEED: 
        txt = "Bubble Speed Up!"; 
		draw_sprite(spr_upgrade_bubble_speed,0,_x,_y)
		desc = "Bubbles are faster!";
    break;

    case PERKS.BUBBLE_LIFESPAN: 
        txt = "Bubble Lifespan Up!"; 
		draw_sprite(spr_upgrade_bubble_lifespan,0,_x,_y);
		desc = "Bubbles last longer!";
    break;

    case PERKS.BUBBLE_STUN: 
        txt = "Bubble Stun Up!"; 
		draw_sprite(spr_upgrade_bubble_stun,0,_x,_y)
		desc = "Bubbles stun enemies for a short period!\nFurther upgrades stun for longer!";
    break;

    case PERKS.BUBBLE_PIERCE: 
        txt = "Bubble Pierce Up!"; 
		draw_sprite(spr_upgrade_bubble_pierce,0,_x,_y)
		desc = "Bubbles hit more enemies before popping!";
    break;
	
    case PERKS.TOTAL_PERKS: 
        txt = "Total Perks Up!"; 
		draw_sprite(spr_upgrade_perk_up,0,_x,_y) 
		desc = "Show more upgrades to choose from!";
    break;
	
    case PERKS.EXP_PICKUP_RANGE: 
        txt = "EXP Pickup range Up!"; 
		draw_sprite(spr_upgrade_exp_range,0,_x,_y) 
		desc = "Pick up exp from farther away!";
    break;
	
    case PERKS.SPOTLIGHT_RANGE: 
        txt = "Spotlight Range Up!"; 
		draw_sprite(spr_upgrade_spotlight,0,_x,_y)
		desc = "See further out!";
    break;
    case PERKS.HP_DROP:
        txt = "HP Drop Chance up!"; 
		draw_sprite(spr_upgrade_health_drop,0,_x,_y) 
		desc = "Hp drops more often from enemies!";
    break;

    default:
        txt = "Unknown Perk";
		desc = "This should never happen!\nIf you see this please contact\nArisTheMage on Discord!";
    break;
}

gui_x = device_mouse_x_to_gui(0)
gui_y = device_mouse_y_to_gui(0)



//draw_text_transformed(_x,_y,txt,0.25,0.25,0)
if(is_double){
	if(obj_DC_player.perks[perk] + 2 > obj_DC_player.limit[perk]){
		is_double = false				
	}else{
		txt += " x2!"
		desc += "\nLucky! Choose this one to upgrade it twice!"
		draw_text_transformed(_x+20,_y+20,"x2!",0.25,0.25,0)	
	}
}


if (mouse_in_sprite_GUI(spr_upgrade_icon, _x, _y)) {
    if(mouse_check_button_released(mb_left)){
		obj_DC_player.perks[perk]++;
		if(is_double){
			obj_DC_player.perks[perk]++
		}
		unpause()
	}
	// Upgrade Description
	if(instance_exists(obj_upgrade_bg)){
		obj_upgrade_bg.txt = txt;
		obj_upgrade_bg.desc = desc;
	}
	//draw_sprite_ext(spr_upgrade_desc,0,700,700,20,3,0,c_white,1)
}