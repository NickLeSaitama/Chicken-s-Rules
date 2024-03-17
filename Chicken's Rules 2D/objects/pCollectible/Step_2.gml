// Inherit the parent event
event_inherited();

EnemyCollision();

if (onFloor) hsp = 0;

if (onFloor) sprite_index = sprOnFloor; else sprite_index = sprInAir;

if (place_meeting(x,y,oPlayer) and (collectScript != -1) and (onFloor))
{
	if (collectScriptArg != -1)
	{
		script_execute(collectScript, collectScriptArg);
	}
	else 
	{
		script_execute(collectScript);
	}
	instance_destroy(self);
}

