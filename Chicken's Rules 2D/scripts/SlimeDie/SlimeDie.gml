
function SlimeDie(){


if (hsp != 0)
{
	if (hsp > 0)
	{
		hsp -= 0.05;
		hsp = max(hsp, 0);
	}
	else
	{
		hsp += 0.05;
		hsp = min(hsp, 0);
	}
}
else
{
	instance_destroy(self);
}
EnemyCollision();
if (onFloor != true) sprite_index = sprJump; else sprite_index = sprMove;
if (hsp != 0) image_xscale = sign(-hsp);
}