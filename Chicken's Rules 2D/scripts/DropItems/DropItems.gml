function DropItems(_x, _y,  _items){
	
var _itemsLenght = array_length_1d(_items);
	
if (_itemsLenght >= 1)
{
	var _dir = irandom(1);
	if (_dir = 0) _dir = -1;
	for (var i = 0; i < _itemsLenght; i++)
	{
		with (instance_create_layer(_x,_y-1,"Instances",_items[i]))
		{
			//hsp = (3 * _dir) / round(i/2);
			hsp = random_range(0.3,0.8) * _dir;
			vsp = random_range(-1,-2);
			image_speed = random_range(0.7,1);
			_dir = -_dir
		}
	}
}
}