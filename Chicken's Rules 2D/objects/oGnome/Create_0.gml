
event_inherited();


entityDropList = [oCoin,oCoin,oCoin];

state = ENEMYSTATE.WANDER;

//EnnemySprite
sprMove = sGnome;
sprAttack = sGnomeAttack;
sprHurt = sGnome;
sprDie = sGnomeDie;
//EnnemyScript
enemyScript[ENEMYSTATE.WANDER] = GnomeWander;
enemyScript[ENEMYSTATE.CHASE] = GnomeChase;
enemyScript[ENEMYSTATE.ATTACK] = GnomeAttack;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = GnomeDie;