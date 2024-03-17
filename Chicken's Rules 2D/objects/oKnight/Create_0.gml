
event_inherited();


entityDropList = [oApple,oCoin,oCoin];

state = ENEMYSTATE.WANDER;

//EnnemySprite
sprMove = sKnight;
sprAttack = sKnight;
sprHurt = sKnight;
sprDie = sKnight;
//EnnemyScript
enemyScript[ENEMYSTATE.WANDER] = GnomeWander;
enemyScript[ENEMYSTATE.CHASE] = GnomeChase;
enemyScript[ENEMYSTATE.ATTACK] = GnomeWander;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = GnomeDie;