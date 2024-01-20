function EnemyAnimation(){
//Animation

if (!onFloor)
{
	sprite_index = sprMove;
	image_speed = 0;
	if (vsp <= 0)
	{
		image_index = 0;
	} else image_index = 0;
}
else
{
	if (hsp == 0)
	{
		sprite_index = sprMove;
		image_index = 0;
		image_speed = 0;
	}
	else
	{
		sprite_index = sprMove;
		image_speed = 1;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
}