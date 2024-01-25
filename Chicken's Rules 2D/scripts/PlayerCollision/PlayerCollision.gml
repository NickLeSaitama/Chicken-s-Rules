function PlayerCollision(){


onFloor = (place_meeting(x,y+1,oCol)) or (place_meeting(x,y+1,oPlatform) and (instance_place(x,y+1,oPlatform).y > y));

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

vsp = (grv + vsp); 
if (place_meeting(x,y+vsp,oCol))
{
	while (!place_meeting(x,y+sign(vsp),oCol))
	{
		y = y + sign(vsp);
	}
	if (vsp > 0) y = floor(y);
	vsp = 0;
}
show_debug_message(y);

//Platform

if (place_meeting(x,y+vsp,oPlatform) and (vsp > 0) and (instance_place(x,y+vsp,oPlatform).y > y))
{
	while (!place_meeting(x,y+sign(vsp),oPlatform))
	{
		y = y + sign(vsp);
	}
	if (vsp > 0) y = floor(y);
	vsp = 0;
}


y = y + vsp;

}