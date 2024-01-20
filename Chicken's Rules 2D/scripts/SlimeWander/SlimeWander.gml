function SlimeWander(){
if (place_meeting(x,y+1,oCol))
{
	hsp = 0;
	if (wait++ >= waitDuration)
	{
		vsp -= 5;
		wait = 0;
		hsp = 2 * random_range(-1,1);
	}
}
EnemyCollision();
if (onFloor != true) sprite_index = sprJump; else sprite_index = sprMove;
}