function PlayerTileCollision(){

var _tiles = "Tiles_1";

onFloor = TileMeeting(x,y+1,_tiles)

//Horizontal

if (TileMeeting(x+hsp,y,_tiles))
{
	while (!TileMeeting(x+sign(hsp),y,_tiles))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Verical

vsp = (grv + vsp);

if (TileMeeting(x,y+vsp,_tiles))
{
	while (!TileMeeting(x,y+sign(vsp),_tiles))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

}