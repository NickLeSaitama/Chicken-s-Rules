//Update cam

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y - 16;
	//Update Object postion

	x += (xTo - x) / 10;
	y += (yTo - y) / 5;
}
else
{
	y += 0.1
}


// Keep camera in room

x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//Screenshake

//x += random_range(-shakeRemain, shakeRemain);
//y += random_range(-shakeRemain, shakeRemain);


//shakeRemain = max(0, shakeRemain - (( 1/ shakeLenght) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);

//Background

if (layer_exists("Backgrounds"))
{
	layer_x("Backgrounds",x/2);
	//layer_y("Backgrounds_1",y - viewHeightHalf);
}

if (layer_exists("Backgrounds_2"))
{
	layer_x("Backgrounds_2",x/1.6);
	//layer_y("Backgrounds_1",y - viewHeightHalf);
}
