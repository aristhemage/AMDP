// NOTE FOR DATA MINERS
// THIS CODE IS VERY OLD AND I MADE IT YEARS AGO, I JUST IMPORTED IT INTO AMDP AND MODIFIED IT A LITTLE
// TO MAKE SURE IT WORKS. DONT JUDGE MY BAD CODE HERE PLS.
// - JULIE


phaze = phazes.build;

hp = 100;
damage = 1; //How much damage the cannonballs do
spd = 4; //Speed of the cannonballs themselves
pierce = 1; //How many enemies it can peirce before the cannonball dissapears
attack_cooldown = room_speed*1.5; //Number of frames it takes the cannon to attack, lower = faster, max speed is 1
attack_timer = attack_cooldown/image_number; //Timer used for attacking, dont touch.

statsSetup = false;
discount = 0;

drop_coin_chance = 0; //Percent chance to have enemies drop coins

drain_amount = 0; //Used for draining
cash_visual = 0; //Used for draining

bonus_cash = 100;
bonus_worth = 0;

x = room_width/2;
y = room_height/2;
image_speed = 0;



upgrades = {
    path_A : {
        names : ["More Damage", "Even More Damage", "Goodads of Damage", "Gods of Destruction"],
        prices : [550, 1700, 4500, 15500],
        desc: [multiline_string("Your cannonballs deal one more damage!"),
               multiline_string("Adds another damage to your cannonballs!"),
               multiline_string("Yet another damage to add to the pile."),
               multiline_string("Enemies Beware...")],
        level : 0      
    },
    path_B : {
        names : ["Multi-shot", "Bad Time Trio", "Bullet Hell", "Frag Bombs"],
        prices : [1200, 4000, 8000, 15000],
        desc: [multiline_string("Upgrade your cannon to Shoot in two directions at once!"),
               multiline_string("Upgrade your cannon again To shoot out of three directions!"),
               multiline_string("Sounds like a bad time For the enemies."),
               multiline_string("Turns your cannonballs into explosives! Will frag upon impact into 4 smaller projectiles that deal 1/4th the damage!")],
        level : 0,       
    },
    path_C : {
        names : ["Extra Pierce", "Triple Trouble", "Four Times The Fun", "A Little Bit of Everything"],
        prices : [800, 1400, 5000, 12000],
        desc: [multiline_string("Lets your cannonballs go through one more enemy!"),
               multiline_string("When two wasn't enough, cannonballs now hit up to three!"),
               multiline_string("Line them up and knock them down. Your cannonballs no go through three enemies, hitting the fourth!"),
               multiline_string("All of the time. Your cannonballs no longer deteriate when going through enemies!")],
        level : 0,       
    },
    path_D : {
        names : ["Cannon Greese", "Energy Drink", "Sonic Speed", "\"Sugar\""],
        prices : [1000, 3000, 10000, 25000],
        desc: [multiline_string("Makes your cannon faster, so you can shoot more often!"),
               multiline_string("Lacing your cannonballs with energy drinks seemingly makes your cannon shoot even faster!"),
               multiline_string("*Cocks Cannon* No, YOU'RE too slow."),
               multiline_string("Yeah, let's go with that... Your cannon now shoots at ultra speed!")],
        level : 0,       
    },
}

instance_create_depth(x,y,1,obj_OTOD_mouse);
instance_create_depth(630,448,1,obj_OTOD_BuyableTower);
instance_create_depth(765,448,1,obj_OTOD_BuyableTower);
instance_create_depth(630,564.5,1,obj_OTOD_BuyableTower);
instance_create_depth(765,564.5,1,obj_OTOD_BuyableTower);


cash_spent = 0 //Unused, but dont delete or gamemaker will yell at me for some reason
autofire = 0 //Autofire cannon

superUpgradeBought = false; // Super Upgrade stuff
supPrice = 40000;
supName = "Mega Round";

