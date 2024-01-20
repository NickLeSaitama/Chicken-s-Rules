function PlayerAttackDefault(){

if (instance_exists(oWeapon))
{
	PlayerMovement(1);
	PlayerCollision();
	PlayerAnimation();
	
	with (oWeapon)
	{
		if (sprite_index != atkSprite) 
		{
			sprite_index = atkSprite;
			localFrame = 0;
			if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
			ds_list_clear(hitByAttack);
		}
		var _totalFrames = sprite_get_number(sprite_index);
		image_index = localFrame + _totalFrames
		localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

		if (localFrame >= _totalFrames)
		{
			animationEnd = true;
			localFrame -= _totalFrames;
		} else animationEnd = false;
		localFrame = max(localFrame, 0)
		
		if (animationEnd == true)
		{
			sprite_index = -1;
			oPlayer.state = PlayerStateFree;
		}
		CalcAttack(atkSpriteHB,script_execute(oPlayer.atkDmgScript));
	}
}
else state = PlayerStateFree;
}