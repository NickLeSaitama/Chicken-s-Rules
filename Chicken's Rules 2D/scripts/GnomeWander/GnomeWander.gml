function GnomeWander(){
if (wait-- <= 0)
{
	var _dir = irandom_range(-1,1);
	hsp = _dir * enemySpeed;
	wait = irandom_range(15,45);
}
if (instance_exists(oPlayer)) and (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius) //and (oPlayer.state != PlayerStateDead)
{
	state = ENEMYSTATE.CHASE;
	target = oPlayer;
}

EnemyAnimation();
}