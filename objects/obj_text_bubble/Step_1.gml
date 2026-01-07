//Follow the object
x = follow.x + follow.sprite_width/2;
y = follow.y - sprite_height;
image_angle = follow.image_angle;

if(global.bubble_x_scale == -1){
	new_x_scale = max((string_width(txt[txtNo]) + 2 * horizontal_margin)/sprite_get_width(sprite_index)*0.35,1.5)
	new_y_scale = max((string_height(showTxt) + 2 * vertical_margin)/sprite_get_height(sprite_index)*0.35,1.5)
    lines = 1 + string_count ("\n", showTxt);
	if(abs(new_x_scale-image_xscale) > 0.05){
		if(new_x_scale < image_xscale){
			image_xscale -= 0.05;	
		}else{
			image_xscale+= 0.05;	
		}
	}

	if(abs(new_y_scale-image_yscale) > 0.05){
		if(new_y_scale < image_yscale){
			image_yscale-= 0.05;	
		}else{
			image_yscale+= 0.05;	
		}
	}
}else{
	image_xscale = global.bubble_x_scale;
	image_yscale = global.bubble_y_scale;
	global.bubble_x_scale = -1;
}
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
if(keyboard_check_pressed(vk_enter)){
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
			//If there isnt another textbubble coming up, destroy, otherwise set globals then destroy
			if(!isNext){
				instance_destroy();	
			}else{
				global.bubble_x_scale = image_xscale;
				global.bubble_y_scale = image_yscale;
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
			instance_destroy();	
		}
	}
}

if (showTxt != txt[txtNo]){
	if(sound_timer <= 0){
		sound_timer = 3;
		audio_play_sound(snd_tet_speak,3,false)
	}else{
		sound_timer--;	
	}
}