function PlayerAttackThrust(){
switch(attackTime)
{
	case 0 : instance_create_layer(oPlayer.x,oPlayer.y - 5,"Instances",oWeapon);
	with(oWeapon)
	{
		sprite_index = oPlayer.weaponSprite;
		image_xscale = oPlayer.image_xscale;
		if (oPlayer.image_xscale = 1) image_angle = 315; else image_angle = 45;
		
	}
	attackTime++;
	break;
	
	case 1 :
	with(oWeapon)
	{
		x += oPlayer.weaponSpd * image_xscale;
		if (abs(x - oPlayer.x) >= oPlayer.weaponAttackLenght) oPlayer.attackTime++;
	}
	break;
	
	case 2 :
	with(oWeapon)
	{
		x -= oPlayer.weaponSpd * image_xscale;
		if (abs(x - oPlayer.x) <= oPlayer.x) oPlayer.attackTime++;
	}
	break;
	
	case 3 :
	instance_destroy(oWeapon);
	state = PlayerStateFree;
	attackTime = 0;
	break;
}
}