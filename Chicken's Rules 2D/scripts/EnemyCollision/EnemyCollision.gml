function EnemyCollision(){
onFloor = place_meeting(x,y+1,oCol)

//Horizontal

if (place_meeting(x+hsp,y,oCol))
{
	while (!place_meeting(x+sign(hsp),y,oCol))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Verical

if (!onFloor) vsp = (grv + vsp);

if (place_meeting(x,y+vsp,oCol))
{
	while (!place_meeting(x,y+sign(vsp),oCol))
	{
		y = y + sign(vsp);
	}
	if (vsp > 0) y = floor(y);
	vsp = 0;
}

y = y + vsp;

if (hsp != 0) image_xscale = sign(hsp);
}