//Room transition

if (instance_exists(oPlayer)) and (position_meeting(oPlayer.x,oPlayer.y,id))
{
	if (!instance_exists(oTransition)) and (oPlayer.state != PlayerStateDead)
	{
		if (doorType == false || oPlayer.up == true)
		{
			global.targetRoom = targetRoom;
			global.targetX = targetX;
			global.targetY = targetY;
			global.targetDirection = oPlayer.image_xscale;
			if (doorType == true)
			{
				with (oPlayer)
				{
					vsp = 0;
					hsp = 0;
					state  = PlayerStateWait;
				}
			}
			else with (oPlayer) state = PlayerStateTransition;
			RoomTransition(TRANS_TYPE.SLIDE, targetRoom);
			instance_destroy();
		}
	}
}