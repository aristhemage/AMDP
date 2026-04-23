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
