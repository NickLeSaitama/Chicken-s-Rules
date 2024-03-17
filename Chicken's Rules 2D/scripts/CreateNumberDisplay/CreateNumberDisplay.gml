function CreateNumberDisplay(_x,_y,_ammount,_color){
var _inst = instance_create_layer(_x+10,_y-20,"Player",oNumberDisplay);
if instance_exists(_inst)
{
	with(_inst)
	{
		number = _ammount;
		color = _color
	}
}
}