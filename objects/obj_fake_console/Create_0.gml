image_xscale = 0;
image_yscale = 0;

show_txt = "";
txt = [multiline_string("print_debug_\nmessage(gamemode) platformer gamemode = rpg; print_debug_message('RPG MODE ON') player.can_jump = false; player.can_attack = true; player.hp = 12; player.max_hp = 12; player.mp = 5; gravity = 0; player.xp = 0; player.level = 1; function gain_xp(amount)\n{player.xp+=amount;} function level_up(){player.level+=1;\nplayer.max_hp+=3;\nprint_debug_message('LEVEL UP');} start_battle('Angry Triangle'); \nprint_debug_message('NOW MY RPG')"),"Are you sure? (y/n)\ny","Changing game... Please wait..."];

char = 1;
message_no = 0;
move_on_timer = 30;