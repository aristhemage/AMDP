life--;
if(life <= 0){
	obj_master.rpg_turn = TURN.PLAYER
	instance_destroy(obj_rpg_soul)
	instance_destroy();	
	
}