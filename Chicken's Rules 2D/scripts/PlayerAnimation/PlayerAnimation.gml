function PlayerAnimation(){
	
//Animation

if (!onFloor)
{
	sprite_index = sPlayerJump;
	image_speed = 0;
	if (vsp <= 0)
	{
		image_index = 0;
	} else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerRun;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
}