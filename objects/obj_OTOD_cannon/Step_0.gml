#region Visuals

//Change the angle visually
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Change the looks of the cannon
switch(upgrades.path_B.level){
	case 1: 
	case 2: 
	case 3: 
	case 4: sprite_index = spr_cannon_double; break;
}

#endregion

#region Upgrades

//Damage
switch(upgrades.path_A.level){
	case 1: damage = 2; break;
	case 2: damage = 3; break;
	case 3: damage = 4; break;
	case 4: damage = 5; break;
}

//Upgrade path B is in the visuals region

//Pierce
switch(upgrades.path_C.level){
	case 1: pierce = 2; break;
	case 2: pierce = 3; break;
	case 3: pierce = 4; break;
	case 4: pierce = 4; break;
}

//Attack speed
switch(upgrades.path_D.level){
	case 1: attack_cooldown = room_speed * 1.25; break;
	case 2: attack_cooldown = room_speed; break;
	case 3: attack_cooldown = 45; break;
	case 4: attack_cooldown = 15; break;
}

#endregion

#region Shooting the cannon

var kFire = keyboard_check(vk_space) || mouse_check_button(mb_left);
if(keyboard_check_released(ord("Q"))){ autofire = !autofire}
if(autofire){
	kFire = true;	
}

if(phaze = phazes.attack && kFire && hp > 0){ 
	if(image_index == 0){
		// TODO: ADD BACK SOUNDS
		//audio_play_sound(snd_cannon,1,false);
		//audio_sound_gain(snd_cannon,oGame.sfxVolume/100,1);
		shoot_cannon();	
		attack_timer = attack_cooldown/image_number;
		image_index++;
	}
}

if(image_index != 0){
	if(attack_timer > 0){
		attack_timer--;
	}else{
		image_index++;
		attack_timer = attack_cooldown/image_number;
		if(image_index == image_number){
			image_index = 0;	
		}
	}
}

#endregion



#region Misc
	///Draining cash
	if(drain_amount >= 0){
		//Drain the cash visually, actually drain it using the drain script
		cash_visual -= drain_amount/20;
		drain_amount -= drain_amount/20;
	}else{
		cash_visual = cash;	
	}
	
	//Fix a limit bug
	if(drain_amount < 0.9){
		drain_amount = 0;
		if(cash_visual % 1 != 0){	
			cash_visual = cash;
		}
	}
	
	//Dont go below 0 hp
	if(hp < 0){
		hp = 0;	
	}
#endregion