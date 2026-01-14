if(!statsSetup && obj_OTOD_Game.difficulty != -1){
	switch(obj_OTOD_Game.difficulty){
		case diff.easy:
			hp = 100; //Hp of the player.
			cash = 500; //Starting cash
			bonus_cash = 150; //Cash gained at the end of qeach round
			bonus_worth = 0.1; //Percent of extra cash mobs drop, mixes with coins
			sell_percent = 0.90; //Percent of the tower price gotten when sold.	
		break;
		
		case diff.med:
			hp = 75;
			cash = 500; 
			bonus_cash = 125;
			bonus_worth = 0; 
			sell_percent = 0.75; 
		break;
		
		case diff.hard:
			hp = 50;
			cash = 350; 
			bonus_cash = 100;
			bonus_worth = -0.095; 
			sell_percent = 0.55; 
		break;
	}
	statsSetup = true;
	cash_visual = cash; //Used for draining
	
}



