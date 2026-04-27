// If no sound is detected default to tet

if(!variable_instance_exists(id,"sound")){
	sound = snd_tet_speak;	
}





lines = 1 + string_count ("\n", showTxt);

//Make the text show up one letter at a time
if(!once){
	txtTimerInt = txtSpd;	
	txtTimer = txtSpd;	
	once = true;
}


if(showTxt != txt[txtNo]){
	///More = slower, any less than 1 or just 1 is 1 per frame, 0 is specifically faster
	if(txtSpd > 1){
		if(txtTimer <= 0){
			showTxt += string_char_at(txt[txtNo],txtPos);
			txtPos++;
			txtTimer = txtTimerInt;
		}else{
			txtTimer--;	
		}
	}else{
		if(txtSpd != 0){
			showTxt += string_char_at(txt[txtNo],txtPos);
			txtPos++;
		}else{
			showTxt += string_char_at(txt[txtNo],txtPos);
			txtPos++;
			showTxt += string_char_at(txt[txtNo],txtPos);
			txtPos++;
			showTxt += string_char_at(txt[txtNo],txtPos);
			txtPos++;
			showTxt += string_char_at(txt[txtNo],txtPos);
			txtPos++;
		}	
	}	
}

//Exit the bubble/Skip the text/Go To next
if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))){
	if(showTxt != txt[txtNo]){
		showTxt = txt[txtNo];
		image_xscale = new_x_scale;
		image_yscale = new_y_scale;
	}else{
		if(txtNo != array_length(txt)-1){
			txtNo++;
			txtPos = 1;
			showTxt = "";
		}else{
			if(!last){
				finished = true;	
			}else{
				instance_destroy();
			}
		}
	}
}

//Visual enter button
if(enterTimer <= 0){
	enterState++;
	if(enterState > 1){
		enterState = 0;	
	}
	enterTimer = 30;
}else{
	enterTimer--;	
}



if(variable_instance_exists(self,"bubble_timer")){
	if(bubble_timer != -1){
		if(showTxt == txt[txtNo])
		if(bubble_timer > 0){
			bubble_timer--;	
		}else{
			if(!last){
				finished = true;	
			}else{
				instance_destroy();
			}
		}
	}
}

if (showTxt != txt[txtNo]){
	if(sound_timer <= 0){
		sound_timer = 3;
		audio_play_sound(sound,3,false,obj_settings_master.sfx_volume)
	}else{
		sound_timer--;	
	}
}

// Spawn in the correct portrait
if (model != -1 && !instance_exists(obj_tet_rpg_portrait)){
	instance_create_depth(x,y,-800,obj_tet_rpg_portrait,{eyelid_no: face, light_col: col})	
}

// Update it live
if(instance_exists(obj_tet_rpg_portrait)){
	obj_tet_rpg_portrait.eyelid_no = face;
	obj_tet_rpg_portrait.light_col = col;
}