// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fadeOut(spd){
	if (image_alpha > 0){image_alpha += -spd;}else{instance_destroy();}
}