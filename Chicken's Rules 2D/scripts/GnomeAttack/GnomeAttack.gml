function GnomeAttack(){
	
if (floor(image_index) == 2) and (image_speed == 1)
{
	hsp = 2.5;
	hsp = hsp * dir;
	vsp = -2;
	image_speed = 0;
}
else if (onFloor) and (image_index >= 2)
{
	if (floor(image_index) == 2) image_index = 3;
	if (hsp < 0) hsp = min(0, hsp + 0.13); else hsp = max(0, hsp - 0.13);
	if (hsp == 0) image_speed = 1;
}
if (floor(image_index) == sprite_get_number(sprAttack) - 1) state = ENEMYSTATE.CHASE;

}