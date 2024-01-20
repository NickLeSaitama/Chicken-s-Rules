function PlayerArtifactEquip(_artifact, _artifact_2){

if (instance_exists(oPlayer)) with(oPlayer)
{
	artifactOnHitScript = [-1, -1];
	artifactDmgModifierScript = [-1, -1];
	if (_artifact != -1) global.playerArtifactEquipped[0] = _artifact;
	if (_artifact_2 != -1) global.playerArtifactEquipped[1] = _artifact_2;
	
	for (var i = 0; i < 2; i ++)
	{
		switch(global.playerArtifactEquipped[i])
		{
			case ARTIFACT.NONE:
				break;
			case ARTIFACT.HELMET_OF_THE_NAMELESS_KNIGHT:
				
				function HelmetOfTheNamelessKnightOnHit(_enemy)
				{
					
				}
				function HelmetOfTheNamelessKnightDmgModifier(_dmg)
				{
					return _dmg * 1.5;
				}
				
				artifactOnHitScript[i] = HelmetOfTheNamelessKnightOnHit;
				artifactDmgModifierScript[i] = HelmetOfTheNamelessKnightDmgModifier;
				
				break;
			default :
				break;
		}
	}
}
}