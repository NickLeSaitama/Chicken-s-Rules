
function HurtPlayer(_direction,_force,_damage){

if (oPlayer.invincible <= 0) && (oPlayer.iFrames == false) and (oPlayer.state != PlayerStateDead)
{
	global.playerHealth = max(0, global.playerHealth-_damage);
	audio_play_sound(sndPlayerHurt,5,false);
	if (global.playerHealth > 0)
	{
		with (oPlayer)
		{
			invincible = 60;
			flash = 0.7;	
			
			if (_force != 0)
			{
				oWeapon.sprite_index = -1;
				image_speed = 0;
				playerHurtTime = 20 * _force;
				sprite_index = sPlayerHurt;
				hsp = -_direction * _force;
				vsp = -_force * 1.5;
				if (hsp != 0) image_xscale = sign(-hsp);
				state = PlayerStateHurt;
			//sprite_index = sPlayerHurt;
			//state = PlayerStateHurt;
			//direction = _direction-180;
			//moveDistanceRemaining = _force;
			}
			//ScreenShake(2,10);			
		}
	}
	else
	{
		//Kill player
		with (oPlayer) state = PlayerStateDead;
	}
}
}