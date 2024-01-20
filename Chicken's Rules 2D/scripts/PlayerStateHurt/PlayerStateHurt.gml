function PlayerStateHurt(){

hsp *= 0.98;
if (playerHurtTime-- <= 0)
{
	state = PlayerStateFree;
}

PlayerCollision();
if (onFloor) image_index = 1; else image_index = 0;
}