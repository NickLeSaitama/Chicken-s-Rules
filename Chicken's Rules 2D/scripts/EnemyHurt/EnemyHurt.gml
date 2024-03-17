
function HurtEnemy(_enemy, _damage, _source, _knockback){

with(_enemy)
{
	if (state != ENEMYSTATE.DIE)
	{
		_damage = floor(_damage);
		enemyHP -= _damage;
		CreateNumberDisplay(x+10,y-20,_damage,c_red);
		flash = 1;
		if (enemyHP <= 0)
		{
			state = ENEMYSTATE.DIE;
			sprite_index = sprDie;
			image_index = 0;
			image_speed = 1;
		}
		else
		{
			if (_knockback != 0)
			{
			if (state != ENEMYSTATE.HURT) statePrevious = state;
			state = ENEMYSTATE.HURT;
			image_speed = 1;
			image_index = 0;
			}
		}
		
		if (_knockback != 0)
		{
			var _knockdirection = point_direction(x,y,(_source).x,(_source).y);
			hsp = -lengthdir_x(_knockback, _knockdirection);
			vsp = 0;
		}
	}
}
}