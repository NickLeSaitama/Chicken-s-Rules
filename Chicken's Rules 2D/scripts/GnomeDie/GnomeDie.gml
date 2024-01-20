
function GnomeDie(){


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
hsp = 0;

if ((image_index == sprite_get_number(sprDie) - 1) and (image_speed != 0))
{
	image_index = sprite_get_number(sprDie) - 1;
	image_speed = 0;
	if (entityDropList != -1)
	{
		DropItems(x,y,entityDropList)
	
	}
}
if (hsp != 0) image_xscale = sign(-hsp);
}