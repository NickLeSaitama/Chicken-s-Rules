
function PlayerStateDead(){

hSpeed = 0;
vSpeed = 0;

image_speed = 0;
image_index = image_number-1;
global.targetX = -1;
global.targetY = -1;
RoomTransition(TRANS_TYPE.SLIDE, global.targetRespawn)
}