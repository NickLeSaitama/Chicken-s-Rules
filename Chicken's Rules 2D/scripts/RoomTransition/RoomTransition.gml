function RoomTransition(){

if (!instance_exists(oTransition))
{
	with (instance_create_depth(0,0,-999,oTransition))
	{
		type = argument[0];
		target = argument[1];
	}
}
}