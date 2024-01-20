function PlayerStateFree(){


PlayerMovement();
PlayerCollision();
PlayerAnimation();

//Actions keys

if (keyActionPrimary) state = PlayerStateAttack;

if ((up or down) and place_meeting(x,y,oClimbable))
{
	x = instance_nearest(x,y,oClimbable).x + 8;
	state = PlayerStateClimb;
	vsp = 0;
	hsp = 0;
	sprite_index = sPlayerClimb;
	image_speed = 0;
	image_xscale = 1;
}

//Rolling
waitRoll++;
if (spaceBar)
{
	if (waitRoll >= waitRollDuration)
	{
		state = PlayerStateRoll;
		vsp = -1.8;
		moveDistanceRemaining = distanceRoll;
		waitRoll = 0;
		//audio_play_sound(sndPlayerRoll,5,false);
	}
}

}


