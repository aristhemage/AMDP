// Stole this movement code from online I just dont wanna type it all again for the millionth time
// Credits to whoever I googled.
var move_speed = 4;

var mx = (keyboard_check(vk_right) || keyboard_check(ord("D"))) 
       - (keyboard_check(vk_left)  || keyboard_check(ord("A")));

var my = (keyboard_check(vk_down)  || keyboard_check(ord("S"))) 
       - (keyboard_check(vk_up)    || keyboard_check(ord("W")));

// Normalize diagonal movement
if (mx != 0 || my != 0) {
    var len = point_distance(0, 0, mx, my);
    mx /= len;
    my /= len;
}

// Move
x += mx * move_speed;
y += my * move_speed;


// Back to my code
var box = obj_rpg_battlebox;

// Clamp player position inside da box
x = clamp(x, box.bbox_left + 15, box.bbox_right - 15);
y = clamp(y,box.bbox_top + 15 , box.bbox_bottom - 15);

// Touching bullets
if(place_meeting(x,y,obj_rpg_bullet)){
	if(hit_cooldown <= 0){
		obj_master.rpg_hp--;	
		hit_cooldown = 60;
	}
}
if(hit_cooldown > 0){
	hit_cooldown--;
}

image_alpha = (hit_cooldown % 10 == 0 && hit_cooldown != 0) ? 0.5:1

if(obj_master.rpg_hp <= 0){
	if(!obj_master.seen_negative){
		with(obj_cutscene_master){
			// The cutscene where tet forgets to set death	
			// TODO: Make less jarring
			var actions = [
					action_wait_for_var(obj_master, "rpg_turn", TURN.PLAYER),
					action_set_var(obj_master,"pause_battle",true),
					action_create_rpg_text(["WAIT!!!!"],1,spr_tet_rpg_portrait,EYELIDS.NONE,c_red),
					action_wait_for_var(obj_rpg_textbox,"finished",true),
					action_create_rpg_text(["Hold on... Your hp is *too* low... Yet you are alive...","Just give me uh... a second"],1,spr_tet_rpg_portrait,EYELIDS.SKEPTICAL,c_yellow),
					action_wait_for_var(obj_rpg_textbox,"finished",true),
					action_create_rpg_text(["..."],1,spr_tet_rpg_portrait,EYELIDS.CLOSED,c_grey),
					action_wait_for_var(obj_rpg_textbox,"finished",true),
					action_create_rpg_text(["There we go! I fixed the issue, try dying now!"],1,spr_tet_rpg_portrait,EYELIDS.HAPPY,c_green),
					action_wait_for_var(obj_rpg_textbox,"finished",true),
					action_create_rpg_text(["or uh, don't, I'm not your dad."],1,spr_tet_rpg_portrait,EYELIDS.MAD,c_red),
					action_wait_for_var(obj_rpg_textbox,"finished",true),
					action_create_rpg_text(["I'm not, right? I at least don't think so...", "Anyway, do what you want, I don't care anymore"],1,spr_tet_rpg_portrait,EYELIDS.SKEPTICAL,c_yellow,true),
					action_wait_for_object_destroy(obj_rpg_textbox),
					action_set_var(obj_master, "rpg_hp",1),
					action_set_var(obj_master, "seen_negative",true),
					action_set_var(obj_master, "pause_battle",false),
						
				]
			
			start_cutscene(actions)
				
		}	
	}
}

//show_debug_message(obj_master.rpg_hp)