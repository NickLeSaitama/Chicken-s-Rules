
//Physics
hsp = 0;
vsp = 0;
spd = 1.5;
grv = 0.2;
jumpHeight = 3;

//Other
invincible = 0;
flash = 0;
flashShader = shRedFlash;
onHitCount = 0;
iFrames = false;

//Rolling
speedRoll = 2.5;
distanceRoll = 50.0;
waitRollDuration = 20;
waitRoll = 0;

state = PlayerStateFree;

PlayerWeaponEquip(-1);
PlayerArtifactEquip(-1, -1);

//Positionning player
if (global.targetX != -1)
{
	x = global.targetX;
	y = global.targetY;
	if (global.targetDirection != 0) image_xscale = global.targetDirection;
}