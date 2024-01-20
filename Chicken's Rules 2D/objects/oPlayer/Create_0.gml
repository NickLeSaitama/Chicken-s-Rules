
//Physics
hsp = 0;
vsp = 0;
spd = 1.5;
grv = 0.23;
jumpHeight = 3.0;

//Other
invincible = 0;
flash = 0;
flashShader = shRedFlash;
onHitCount = 0;
iFrames = false;

//Rolling
speedRoll = 2.8;
distanceRoll = 100.0;
waitRollDuration = 20;
waitRoll = 0;

state = PlayerStateFree;

PlayerWeaponEquip(-1);
PlayerArtifactEquip(-1, -1);