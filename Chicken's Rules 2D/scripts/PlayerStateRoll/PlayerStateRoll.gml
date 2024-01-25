function PlayerStateRoll(){

hsp = (speedRoll * image_xscale);
vsp = 0;
PlayerCollision();

sprite_index = sPlayerRoll;
moveDistanceRemaining = max (0, moveDistanceRemaining - speedRoll);
var _totalFrames = sprite_get_number(sprite_index);
image_index = min(((1 - (moveDistanceRemaining / distanceRoll)) * (_totalFrames)), _totalFrames - 1);
iFrames = true;

if (moveDistanceRemaining <= 0)
{
	iFrames = false;
	state = PlayerStateFree;
}
}