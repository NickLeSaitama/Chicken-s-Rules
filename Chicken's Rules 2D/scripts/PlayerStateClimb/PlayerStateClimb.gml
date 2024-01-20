function PlayerStateClimb(){

image_speed = 0;
if ((up) and (place_meeting(x,y-(bbox_bottom-bbox_top),oClimbable)))
{
	y-=1;
	image_speed = 1;
}

if ((down) and (place_meeting(x,y+(bbox_bottom-bbox_top),oClimbable)))
{
	y+=1;
	image_speed = 1;
}
if ((spaceBar) and (!place_meeting(x,y,oCol)))
{
	state = PlayerStateFree;
}
}