event_inherited();


state = ENEMYSTATE.IDLE;
hsp = 0;
vsp = 0;
hsp_final = 0;
hsp_f = 0;
vsp_final = 0;
vsp_f = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 60;
grv = 0.25;
wait = 0;
aggroCheck = 0;
aggroCheckDuration = 5;
stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;
invincible = false;
cantDamage = false;
enemyMaxHp = enemyHP;

sprMove = sSlime;

enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

