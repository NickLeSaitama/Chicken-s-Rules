function PlayerWeaponEquip(_weapon){

if (_weapon != -1) global.playerWeaponEquipped = _weapon;

atkSpeed = 1;

switch(global.playerWeaponEquipped)
{
	case WEAPON.NONE :
	atkType = PlayerAttackDefault;
	with (oWeapon)
	{
		atkSprite = sPlayerPunch;
		atkSpriteHB = sPlayerPunchHB;
		atkDmg = 1;
		//atkType = [ATTACKTYPE.MELEE, ATTACKTYPE.PHYSICAL];
	}
	function NoneAtkDmg()
	{
		return 1;
	}
	atkDmgScript = NoneAtkDmg;
	break;
	
	case WEAPON.SWORD :
	atkType = PlayerAttackDefault
	with (oWeapon)
	{
		atkSprite = sPlayerSword
		atkSpriteHB = sPlayerSwordHB;
		atkDmg = 2;
	}
	function SwordAtkDmg()
	{
		return 2;
	}
	atkDmgScript = SwordAtkDmg;
}
}