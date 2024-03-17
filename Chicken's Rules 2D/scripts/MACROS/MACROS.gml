function MACROS(){
	#macro FRAME_RATE 60
	#macro TILE_SIZE 16
	#macro ROOM_START rForest
	#macro RESOLUTION_W 640
	#macro RESOLUTION_H 360
	#macro TRANSITION_SPEED 0.03
	#macro OUT 0
	#macro IN 1
	
	enum WEAPON
	{
		NONE,
		SWORD,
		SPEAR,
		TYPE_COUNT
	}
	
	enum ARTIFACT 
	{
		NONE,
		HELMET_OF_THE_NAMELESS_KNIGHT,
		TYPE_COUNT
	}
	
	enum ATTACKTYPE
	{
		MELEE,
		PHYSICAL,
		MAGIC,
		RANGED
	}
	
	enum ENEMYSTATE
	{
		IDLE,
		WANDER,
		CHASE,
		ATTACK,
		HURT,
		DIE,
		WAIT
	}
}