if(playMusic){
	///Songs
	if(!isSongPlaying){
		choice = irandom(array_length(options)-1);
		while(choice == lastPlayed){
			 choice = irandom(array_length(options)-1);		
		}
		audio_play_sound(options[choice],100,false);
		isSongPlaying = true;
		lastPlayed = choice;
	}

	if(!audio_is_playing(options[choice])){
		isSongPlaying = false;
	}
}

if(keyboard_check_released(ord("M")) && !paused){
	playMusic = !playMusic
	if(!playMusic){
		audio_pause_sound(options[choice]);	
	}else{
		audio_resume_sound(options[choice]);	
	}
}

audio_sound_gain(options[choice],musicVolume/100,1);
///Pausing
if (keyboard_check_pressed(vk_escape) && !instance_exists(oDifficultyButton)){
	paused = !paused;
	if (!paused){
		instance_destroy(oPausedMenu);
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;

	}
}

//Don't know why I have to do this, but pausing wont work without the code below
if (paused == true){
    alarm[0]++;
    alarm[1]++;
}


///Difficulty
if(room = rm_game){
if(difficulty == -1 && !instance_exists(oDifficultyButton)){
		instance_create_depth(room_width/2-sprite_get_width(sDifficulties)-128,room_height/2,-99999,oDifficultyButton,{type: 0});	
		instance_create_depth(room_width/2,room_height/2,-99999,oDifficultyButton,{type: 1});	
		instance_create_depth(room_width/2+sprite_get_width(sDifficulties)+128,room_height/2,-99999,oDifficultyButton,{type: 2});	

}else{
	if(difficulty != -1 && !instance_exists(oStats) && !paused){
	//Difficulty selected, spawn in things
	instance_create_depth(x,y,-99999,oStats);
	}
}

}