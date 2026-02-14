scroll_y = room_height;
scroll_speed = 1;
sprite_timer = 5;
_sprite_index = 0;
credits = [];

function credit_sprite(spr,offset = 0){
	// Push the type, what sprite to use, then offset (default 0)
	array_push(credits,["Sprite",spr,offset]);
	credit_spacer(sprite_get_height(spr) + offset);
}


function credit_text(txt){
	array_push(credits,["Text", multiline_string(txt)]);
	credit_spacer(100)
}

function credit_text_2(txt){
	array_push(credits,["Text", txt]);
	credit_spacer(100)
}

function credit_spacer(space){
	array_push(credits,["Spacer", space])	
}




credit_sprite(spr_game_logo);
credit_spacer(100);

credit_text("Programming:");
credit_text("ArisTheMage");
credit_spacer(80);

credit_text("Music:");
credit_text("Jcsoundtracks");
credit_spacer(80);

credit_text("Art:");
credit_text("Aristhemage");
credit_spacer(80);

credit_text("Writing:");
credit_text("Aristhemage");
credit_spacer(120);

credit_text("Featuring:");
credit_spacer(80);

credit_text("SPYK");
credit_spacer(30);
credit_sprite(spr_spike);
credit_text("Still singing karaoke quietly...")
credit_spacer(100);

credit_text("Dual Shooter Shooty Shot (D3S)");
credit_spacer(110);
credit_sprite(spr_turret);
credit_text("Learned there was more to life than shooting shots")
credit_spacer(150);

credit_text("Checky");
credit_spacer(90);
credit_sprite(spr_checkpoint_idle);
credit_spacer(-120);
credit_text("Still helping people to this day")
credit_spacer(130);

credit_text("Mr. Jumpface");
credit_spacer(5);
credit_sprite(sJumpBlock);
credit_spacer(20);
credit_text("Gained a romantic interest in Mrs. Speedface")
credit_spacer(80);

credit_text("Ms. Speedface");
credit_spacer(5);
credit_sprite(sSpeedBlock);
credit_spacer(20);
credit_text("Completely Oblivious")
credit_spacer(30);


credit_text("Pointer the Evil");
credit_spacer(40);
credit_sprite(spr_sign);
credit_text("Started to point people in the wrong direction")
credit_spacer(115);


credit_text("Doorville Lockson");
credit_spacer(130);
credit_sprite(spr_door);
credit_spacer(-60);
credit_text("Opening himself to all")
credit_spacer(100);


credit_text("Lizzy the lazer");
credit_spacer(5);
credit_sprite(spr_lazer);
credit_spacer(20);
credit_text("Stretching her body to new heights")
credit_spacer(80);

credit_text("Preston Pressy");
credit_spacer(10);
credit_sprite(spr_pressure_plate);
credit_spacer(20);
credit_text("Waiting for someone to step on him")
credit_spacer(80);

credit_text_2("Special Thanks:");
credit_text_2("Timpani_Queen        ThatPidgeonDude");
credit_text_2("ARF_Trooper_        Purple_Star");
credit_text_2("NameBeClassified        MegaMerc");
credit_text_2("Cecil        Sarah Spaulding");
credit_text_2("GM:S and LGBTQA+ Discord Communities");
credit_text_2("Toby Fox        Jack Lightstone");
credit_text_2("Charlie Lathe        Pixel Adventures");
credit_text_2("And of course...");

credit_spacer(120);
credit_text("You!");

credit_text("The end!", 1.3);
credit_spacer(60);
credit_text("Thank you for playing the demo!", 1.1);

//TODO ADD SPECIAL THANKS OTHER CREDITS AND FIX SPRITES
