if(image_xscale < 1){
	image_xscale+= 0.05;	
}else{
	// Check if we still have messages left to show
	if (message_no < array_length(txt)){
	    // Typewriter logic
	    if (show_txt != txt[message_no]){
	        show_txt += string_char_at(txt[message_no], char);	
	        show_txt += string_char_at(txt[message_no], char+1);	
	        show_txt += string_char_at(txt[message_no], char+2);	
	        show_txt += string_char_at(txt[message_no], char+3);	
	        show_txt += string_char_at(txt[message_no], char+4);	
	        show_txt += string_char_at(txt[message_no], char+5);	
	        char+= 6;
	    } 
	    else{
			move_on_timer--;
			if(move_on_timer <= 0){
		        if (message_no < array_length(txt) - 1) {
		            message_no++;
		            show_txt = "";
		            char = 1; 
					move_on_timer = 30;
		        }else{
					instance_destroy();	
				}
			}
	    }
	}
 
}

if(image_yscale != 2)
image_yscale += 0.02;

