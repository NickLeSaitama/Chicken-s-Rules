function HealPlayer(_ammount){
	global.playerHealth += _ammount;
	if (global.playerHealth	> global.playerHealthMax) global.playerHealth = global.playerHealthMax;
	CreateNumberDisplay(oPlayer.x+10,oPlayer.y-10,_ammount,c_green);
}