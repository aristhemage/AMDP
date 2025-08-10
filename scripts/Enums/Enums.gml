// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enums(){
	enum ACTION {
	    MOVE,
		MOVE_TET,
	    WAIT_FOR_OBJECT,
	    WAIT_FOR_OBJECT_DESTROY,
	    WAIT_FOR_KEY,
	    WAIT_FOR_CLICK,
	    WAIT_TIME,
	    WAIT_FOR_VAR,
	    DISPLAY_TEXT,
		CREATE_OBJECT,
		DESTROY_OBJECT,
		FADE_OBJECT,
		GOTO_ROOM,
		SET_VAR,
		SET_TET,
		TET_SPEAK,
		CUSTOM_SCRIPT,
	}
	
	enum FADE {
		IN,
		OUT,
		IDLE
	}
	
	enum CAMERA_STATE{
		FOLLOW_PLAYER,
		FOCUS_OBJECT
	}
	
	enum EYELIDS {
	    NONE,
	    HAPPY,
	    MAD,
	    SKEPTICAL,
	    CLOSED
	}
	
	enum STATES {
	    IDLE,
	    MOVING,
	    JUMPING,
	    CUTSCENE,
	    FOLLOW_PLAYER
	}
	
	enum DIRECTIONS {
		LEFT,
		RIGHT,
		UP,
		DOWN,
	}

	enum FLAG_STATE{
		IDLE,
		ANIMATION,
		POLE,
	}
	
	enum PRESSURE_PLATES {
	    GREEN,
	    BLUE,
	    YELLOW,
	    PINK,
	    ORANGE,
		ARRAY_LEN
	}
	
	enum ARCADE_LEVELS{
		SHOOT_SPD,
		SHOOT_SIZE,
		MAX_HEALTH,
		HP_BOX_SPAWNRATE,
	}
}