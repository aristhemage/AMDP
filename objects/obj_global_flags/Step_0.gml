if(room == rm_init){
	room_goto(rm_level_1)	
}

if(!audio_is_playing(sng_base) && can_play_music){
	audio_play_sound(sng_base,1,true,1.1,0);	
}

if(!can_play_music){
	audio_stop_sound(sng_base);
}