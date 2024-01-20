function CalcAttack(_spriteAttack,_dmg){
mask_index = _spriteAttack;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,pEntity,hitByAttackNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		var hitID = hitByAttackNow[| i]; ds_list_find_value(hitByAttackNow,i);
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				if (object_is_ancestor(object_index, pEnemy))
				{
					if (invincible = false) 
					{
						with oPlayer
						{
							onHitCount++;
							//if (attackOnHitScript != -1) script_execute(attackOnHitScript);
							if (artifactOnHitScript[0] != -1) script_execute(artifactOnHitScript[0], hitID);
							if (artifactDmgModifierScript[0] != -1) _dmg = script_execute(artifactDmgModifierScript[0], _dmg);
						}
						HurtEnemy(id,_dmg, other.id, 2);
						audio_play_sound(sndPlayerHit,5,false);
					}
				}
				else if (entityHitScript != -1) script_execute(entityHitScript);
				
			}
		}
	}
	
}

ds_list_destroy(hitByAttackNow);
mask_index = sPlayer;
}