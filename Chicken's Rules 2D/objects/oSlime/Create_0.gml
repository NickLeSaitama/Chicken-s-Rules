
event_inherited();

state = ENEMYSTATE.WANDER;

//EnnemySprite
sprMove = sSlime;
sprJump = sSlimeJump;
sprHurt = sSlime;
sprDie = sSlime;
//EnnemyScript
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeWander;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;