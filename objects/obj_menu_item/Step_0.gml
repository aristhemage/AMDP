// Calculate half dimensions of the text
var half_text_width = string_width(txt) * 0.5;
var half_text_height = string_height(txt) * 0.5;
var v_padding = 20;
var h_padding = 125;
// Define the bounding box based on centered alignment
 left = x - half_text_width - h_padding;
 right = x + half_text_width + h_padding;
 top = y - half_text_height - v_padding;
 bottom = y + half_text_height + v_padding;

// Check if the mouse is within the bounding box
if (mouse_x > left && mouse_x < right && mouse_y > top && mouse_y < bottom) {
   hover = true;
   hover_time+=4;
   if (mouse_check_button_released(mb_left)) {
        onClick();
    }
}else{
	hover = false;	
	hover_time = 0;
}


