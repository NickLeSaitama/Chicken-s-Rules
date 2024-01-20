function GnomeChase(){
	
EnemyAnimation();

if (wait-- <= 0)
{
	var _dir = sign(oPlayer.x - x);
	hsp = _dir * enemySpeed;
	wait = irandom_range(15,30);
	if (irandom(4) = 0) hsp = 0;
	
	
	if collision_rectangle(x - 32, bbox_top, x + 32, bbox_bottom,oPlayer,false,false)
	{
		state = ENEMYSTATE.ATTACK;
		if (oPlayer.x < x) 
		{
			image_xscale = -1;
			dir = -1;
		}
		else 
		{
			image_xscale = 1;
			dir = 1
		}
		vsp = 0;
		hsp = 0;
		image_index = 0;
		image_speed = 1;
		sprite_index = sprAttack;
	}
}

}