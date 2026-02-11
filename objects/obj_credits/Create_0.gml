scroll_y = room_height;
scroll_speed = 1;

credits = [];

function credit_text(_text, _size = 1)
{
    array_push(credits, {
        type: "text",
        text: _text,
        scale: _size
    });
}

function credit_sprite(_spr)
{
    array_push(credits, {
        type: "sprite",
        sprite: _spr
    });
}

function credit_character(_name, _spr, _desc)
{
    credit_text(_name, 1.2);
    credit_sprite(_spr);
    credit_text(_desc, 0.8);
    credit_spacer(40);
}

function credit_spacer(_space)
{
    array_push(credits, {
        type: "space",
        space: _space
    });
}

credit_sprite(spr_game_logo);
credit_spacer(150);

credit_text("Programming:");
credit_text("ArisTheMage");
credit_spacer(100);

credit_text("Music:");
credit_text("Jcsoundtracks");
credit_spacer(100);

credit_text("Art:");
credit_text("Aristhemage");
credit_spacer(100);

credit_text("Writing:");
credit_text("Aristhemage");
credit_spacer(120);

credit_text("Featuring:");
credit_spacer(80);

credit_character("SPYK", spr_spike, "Still singing karaoke silently...");
credit_character("Dual Shooter Shooty Shot (D3S)", spr_turret, "Learned there was more to life than shooting shots");
credit_character("Checky", spr_checkpoint_idle, "Still helping people to this day");
credit_character("Mr. Jumpface", sJumpBlock, "Gained a romantic interest in Mrs. Speedface");
credit_character("Ms. Speedface", sSpeedBlock, "Completely Oblivious");
credit_character("Pointer the Evil", spr_sign, "Started to point people in the wrong direction");
credit_character("Doorville Lockson", spr_door, "Opening his doors to all");
credit_character("Layton the lazer", spr_lazer, "Stretching his body to new heights");
credit_character("Preston Pressy", spr_pressure_plate, "Waiting for someone to step on him");

credit_spacer(120);

credit_text("The end!", 1.3);
credit_spacer(60);
credit_text("Thank you for playing the demo!", 1.1);

//TODO ADD SPECIAL THANKS OTHER CREDITS AND FIX SPRITES
